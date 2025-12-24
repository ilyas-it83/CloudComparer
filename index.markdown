---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
<head>
    <meta charset="utf-8">
    <link rel="icon" type="image/x-icon" href="{{ site.baseurl }}/favicon.ico"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  	<meta name="description" content="Updated public cloud services comparison including Huawei Cloud.">
    <title>AWS vs Azure vs Google vs IBM vs Oracle vs Alibaba | A detailed comparison and mapping between various cloud services</title>
</head>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-552c144e4f497fe9"></script>
<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>

<table id="comparison">
  <tr align="center" class="header" style="position:sticky;top: 0">
	            <th style="width:7%">Category</th>
            <th style="width:10%">Service</th>
			<th>
              <img  src="{{ site.baseurl }}/assets/img/logo/huawei.png" alt="Huawei Cloud"/>
            </th>
            <th>
              <img  src="{{ site.baseurl }}/assets/img/logo/aws.png" alt="AWS Icon" class="header-img"/>
            </th>
            <th>
              <img  src="{{ site.baseurl }}/assets/img/logo/msazure.svg" alt="Microsoft Azure Log"/>
            </th>
            <th>
              <img  src="{{ site.baseurl }}/assets/img/logo/google.svg" alt="Google Cloud Platform Logo" />
            </th>
            <th>
              <img  src="{{ site.baseurl }}/assets/img/logo/IBM-Cloud-svg-lockup-color8.svg"  alt="IBM Cloud Logo" />
            </th>
            <th>
              <img  src="{{ site.baseurl }}/assets/img/logo/oracle.png" alt="Oracle Cloud Logo"/>
            </th>
            <th>
              <img src="{{ site.baseurl }}/assets/img/logo/alibaba.png" alt="Alibaba Cloud Logo"/>
            </th>
  </tr>
	{% for item in site.data.cloudservices.services %}
	<tr>
		<td>{{item.category}}</td>
		<td>{{item.subcategory}}</td>
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
	</tr>
	{% endfor %}
</table>