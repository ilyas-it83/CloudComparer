---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
<head>
    <!-- Google Analytics 4 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id={{ site.google_analytics }}"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', '{{ site.google_analytics }}');
    </script>
    
    <meta charset="utf-8">
    <link rel="icon" type="image/x-icon" href="/favicon.ico"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="follow,index">
    <META NAME="Title" CONTENT="tcloudcomparer | 云服务比较平台">
    <META NAME="Keywords" CONTENT="云服务比较,AWS,Azure,Google Cloud,腾讯云,阿里云,华为云">
    <META NAME="Description" CONTENT="云服务比较平台 - 对比各大云服务商的产品和服务">
    <META NAME="Author" CONTENT="tcloudcomparer">
    <META NAME="Subject" CONTENT="云服务比较平台">
    <meta property="og:type" content="website">
    <meta property="og:title" content="tcloudcomparer | 云服务比较平台">
    <meta property="og:locale" content="zh_CN">
    <meta property="og:description" content="云服务比较平台 - 对比各大云服务商的产品和服务">
    <link rel="canonical" href="https://www.tcloudcompare.com/">
    <meta property="og:url" content="https://www.tcloudcompare.com/">
    <meta property="og:site_name" content="tcloudcomparer">
    <meta property="og:image" content="/img/Logo_small.jpg">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@Ilyas_tweets">
    <meta name="twitter:creator" content="@Ilyas_tweets">
    <meta property="article:author" content="https://www.facebook.com/IlyasTheWebizen">
    <meta name="twitter:description" content="云服务比较平台 - 对比各大云服务商的产品和服务">
    <meta name="twitter:title" content="tcloudcomparer | 云服务比较平台">
    <title>tcloudcomparer</title>
</head>
<script type="text/javascript" src="https://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-552c144e4f497fe9"></script>
<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<!-- <table class="github">
<tr align="center" >
<td><!-- Place this tag where you want the button to render. -->


<table id="comparison">
  <tr align="center" class="header" style="position:sticky;top: 0">
	            <th style="width:7%">Category</th>
            <th style="width:10%">Service</th>
            <th>
              <img  src="{{ site.baseurl }}/assets/img/logo/aws.png" alt="AWS Icon" class="header-img"/>
            </th>
            <th>
              <img  src="{{ site.baseurl }}/assets/img/logo/msazure.svg" alt="Microsoft Azure Log" class="header-img"/>
            </th>
            <th>
              <img  src="{{ site.baseurl }}/assets/img/logo/google.svg" alt="Google Cloud Platform Logo" class="header-img" />
            </th>
            <th>
              <img  src="{{ site.baseurl }}/assets/img/logo/IBM-Cloud-svg-lockup-color8.svg"  alt="IBM Cloud Logo" class="header-img" />
            </th>
            <th>
              <img  src="{{ site.baseurl }}/assets/img/logo/oracle.png" alt="Oracle Cloud Logo" class="header-img"/>
            </th>
            <th>
              <img src="{{ site.baseurl }}/assets/img/logo/alibaba.png" alt="Alibaba Cloud Logo" class="header-img"/>
            </th>
		<th>
              <img  src="{{ site.baseurl }}/assets/img/logo/huawei.png" alt="Huawei Cloud" class="header-img"/>
            </th>
		<th>
              <img  src="{{ site.baseurl }}/assets/img/logo/tencentCloud.png" alt="Tencent Cloud" class="header-img"/>
            </th>
  </tr>
	{% for item in site.data.cloudservices.services %}
	<tr>
		<td>{{item.category}}</td>
		<td>{{item.subcategory}}</td>
		<td>
			<ul>
			    {% for entry in item.service %} 
					{% for record in entry.aws %}
						<li ><img src="{{ site.baseurl }}/assets/img/cloudproviders/aws/{{record.icon}}" alt="{{record.name}}" > <a href="{{record.ref}}" target="_blank" alt="{{record.name}}">{{record.name}}</a></li>
					{% endfor %}	
				{% endfor %}	
			</ul>
		</td>
		<td>
			<ul>
			    {% for entry in item.service %} 
					{% for record in entry.azure %}
						<li><img src="{{ site.baseurl }}/assets/img/cloudproviders/azure/{{record.icon}}" alt="{{record.name}}"  ><a href="{{record.ref}}" target="_blank" alt="{{record.name}}">{{record.name}}</a></li>
					{% endfor %}	
				{% endfor %}	
			</ul>
		</td>
		<td>
			<ul>
			    {% for entry in item.service %} 
				{% for record in entry.google %}
					<li><img src="{{ site.baseurl }}/assets/img/cloudproviders/google/{{record.icon}}" alt="{{record.name}}" ><a href="{{record.ref}}" target="_blank" alt="{{record.name}}">{{record.name}}</a></li>
				{% endfor %}	
				{% endfor %}	
			</ul>
		</td>
		<td>
			<ul>
			    {% for entry in item.service %} 
				{% for record in entry.ibm %}
						<li><img src="{{ site.baseurl }}/assets/img/cloudproviders/ibm/{{record.icon}}" alt="{{record.name}}" ><a href="{{record.ref}}" target="_blank" alt="{{record.name}}">{{record.name}}</a></li>
				{% endfor %}	
				{% endfor %}	
			</ul>
		</td>
		<td>
			<ul>
			    {% for entry in item.service %} 
					{% for record in entry.oracle %}
							<li ><img src="{{ site.baseurl }}/assets/img/cloudproviders/oracle/{{record.icon}}" alt="{{record.name}}" ><a href="{{record.ref}}" target="_blank" alt="{{record.name}}">{{record.name}}</a></li>
					{% endfor %}	
				{% endfor %}	
			</ul>
		</td>
		<td>
			<ul>
			    {% for entry in item.service %} 
					{% for record in entry.alibaba %}
							<li><img src="{{ site.baseurl }}/assets/img/cloudproviders/alibaba/{{record.icon}}" alt="{{record.name}}" ><a href="{{record.ref}}" target="_blank" alt="{{record.name}}">{{record.name}}</a></li>
					{% endfor %}	
				{% endfor %}	
			</ul>
		</td>
		<td>
			<ul>
			    {% for entry in item.service %} 
					{% for record in entry.huawei %}
							<li>
								<img src="{{ site.baseurl }}/assets/img/cloudproviders/huawei/{{record.icon}}" alt="{{record.name}}">
								<a href="{{record.ref}}" target="_blank" alt="{{record.name}}">{{record.name}}</a>
							</li>
					{% endfor %}	
				{% endfor %}	
			</ul>
		</td>
		<td>
			<ul>
			    {% for entry in item.service %} 
				{% for record in entry.tencent %}
					<li>
						<img src="{{ site.baseurl }}/assets/img/cloudproviders/tencent/{{record.icon}}" alt="{{record.name}}">
						<a href="{{record.ref}}" target="_blank" alt="{{record.name}}">{{record.name}}</a>
					</li>
				{% endfor %}
			{% endfor %}
			</ul>
		</td>
	</tr>
	{% endfor %}
</table>
