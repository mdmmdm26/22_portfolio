package com.application.cms.common.controlloer;

import java.io.File;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


import net.coobird.thumbnailator.Thumbnails;

@Controller
public class CommonController {
	
	private final String GOODS_IMAGE_REPO_PATH = "C:\\file_repo\\";
	
	@GetMapping("/thumbnails")
	public void thumbnails (@RequestParam("profile") String profile, HttpServletResponse response) throws Exception {
		
		OutputStream out = response.getOutputStream();
		String filePath = GOODS_IMAGE_REPO_PATH + profile;
		
		File image = new File(filePath);
		if (image.exists()) {
			Thumbnails.of(image).size(800,800).outputFormat("png").toOutputStream(out);
		}
		byte[] buffer = new byte[1024 * 8];
		out.write(buffer);
		out.close();
		
	}
	
}
