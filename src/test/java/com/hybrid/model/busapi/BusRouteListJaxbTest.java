package com.hybrid.model.busapi;

import java.net.MalformedURLException;
import java.net.URL;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

import com.sun.org.apache.xerces.internal.util.URI.MalformedURIException;

public class BusRouteListJaxbTest {
	public static void main(String[] args) {
		//JAXB(Java Architecture And Xml Binding)
		
		try {
			JAXBContext ctx = JAXBContext.newInstance(ServiceResult.class);
			
			ServiceResult result = new ServiceResult();
			MsgHeader msgHeader = new MsgHeader();
			msgHeader.setHeaderCd("100");
			msgHeader.setHeaderMsg("정상처리");
			msgHeader.setItemCount(999);
			result.setMsgHeader(msgHeader);
			
			Marshaller marshaller = ctx.createMarshaller();
			marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
			
			marshaller.marshal(result, System.out);
			
						
			Unmarshaller unmarshaller = ctx.createUnmarshaller();
			String str = "http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?strSrch=6628&serviceKey=kgderCB2DJmZES1%2F2PmJaWAuoPLDjJPToUE8lH6XUO3puQrXfXb0kGxdpf31d8%2FFOHbTSR9xDlMm7mmEjUKlmQ%3D%3D";
			URL url = new URL(str);
			ServiceResult busResult = (ServiceResult) unmarshaller.unmarshal(url);
			marshaller.marshal(busResult, System.out);
			
		} catch (JAXBException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch(MalformedURLException e){
			e.printStackTrace();
		}
	}
}
