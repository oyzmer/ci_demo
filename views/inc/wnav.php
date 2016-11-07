<div class="w-nav-box">
	<div class="w1000">
		<ul class="w-nav">
			<li>
				<a href="<?php echo site_url('about/introduct'); ?>" class="nav-a">走进国星</a>
				<div class="w-snav-box">
					<div class="w1000">
						<ul class="w-snav fl" style="margin-left:34px;">
							<li>
								<a href="<?php echo site_url('about/introduct'); ?>">集团介绍</a>
							</li>
							<li>
								<a href="<?php echo site_url('about'); ?>">公司简介</a>
							</li>
							<li>
								<a href="<?php echo site_url('about/leader'); ?>">领导风采</a>
							</li>
							<li>
								<a href="<?php echo site_url('about/employee/9'); ?>">员工风采</a>
							</li>
							<li>
								<a href="<?php echo site_url('about/culture'); ?>">企业文化</a>
							</li>
							<li>
								<a href="<?php echo site_url('about/party'); ?>">党群建设</a>
							</li>
							<li>
								<a href="<?php echo site_url('about/superior'); ?>" style="background:none">上级关怀</a>
							</li>
						</ul>
					</div>
				</div>
			</li>
			<li>
				<a href="<?php echo site_url('research'); ?>" class="nav-a">技术创新</a>
				<div class="w-snav-box">
					<div class="w1000">
						<ul class="w-snav fl" style="margin-left:118px;">
							<li>
								<a href="<?php echo site_url('research'); ?>">产品研发</a>
							</li>
							<li>
								<a href="<?php echo site_url('tec/tech'); ?>">工艺优化</a>
							</li>
							<li>
								<a href="<?php echo site_url('tec/palt'); ?>" style="background:none">平台建设</a>
							</li>
						</ul>
					</div>
				</div>
			</li>
			<li>
				<a href="<?php echo site_url('soft'); ?>" class="nav-a">可持续发展</a>
				<div class="w-snav-box">
					<div class="w1000">
						<ul class="w-snav fl" style="margin-left:324px;">
							<li>
								<a href="<?php echo site_url('soft'); ?>">安全</a>
							</li>
							<li>
								<a href="<?php echo site_url('develop/flash'); ?>">环保</a>
							</li>
							<li>
								<a href="<?php echo site_url('develop/energy/34'); ?>">公益</a>
							</li>
							<li>
								<a href="<?php echo site_url('develop/energy/37'); ?>" style="background:none">节能减排</a>
							</li>
						</ul>
					</div>
				</div>
			</li>
			<li>
				<a href="<?php echo site_url('product'); ?>" class="nav-a">制造国星</a>
				<div class="w-snav-box">
					<div class="w1000">
						<ul class="w-snav fl" style="margin-left:486px;">
							<li>
								<a href="<?php echo site_url('product'); ?>">产品中心</a>
							</li>
							<li>
								<a href="<?php echo site_url('product/quality'); ?>" style="background:none">品质中心</a>
							</li>
						</ul>
					</div>
				</div>
			</li>
			<li>
				<a href="<?php echo site_url('partners'); ?>" class="nav-a">合作伙伴</a>
				<div class="w-snav-box">
					<div class="w1000">
						<ul class="w-snav fr" style="margin-right:195px;">
							<li>
								<a href="<?php echo site_url('partners/45'); ?>">顾客</a>
							</li>
							<li>
								<a href="<?php echo site_url('partners/46'); ?>" style="background:none">战略供应商</a>
							</li>
						</ul>
					</div>
				</div>
			</li>
			<li>
				<a href="<?php echo site_url('job'); ?>" class="nav-a">人力资源</a>
			    <div class="w-snav-box">
					<div class="w1000">
						<ul class="w-snav fr" style="margin-right:10px;">
							<li>
								<a href="<?php echo site_url('job'); ?>">人才招聘</a>
							</li>
							<li>
								<a href="<?php echo site_url('job/idea'); ?>">人才理念</a>
							</li>
							<li>
								<a href="<?php echo site_url('job/training'); ?>" style="background:none">人才培养</a>
							</li>
						</ul>
					</div>
				</div>
			</li>
		</ul>
	</div>
</div>
<script type="text/javascript">
	$(".w-nav li ").hover(function(){
		$(this).find(".w-snav-box").stop().slideDown(300);
	},function(){
		$(this).find(".w-snav-box").stop().slideUp(300);
	})
</script>