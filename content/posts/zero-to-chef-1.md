+++
menu = "main"
date = "2017-11-21T22:08:07-06:00"
title = "zero to chef 1"
Categories = [
  "Development",
  "Chef",
]
Tags = [
  "Development",
  "chef",
]
Description = "The first post of a series called Zero to Chef."

+++

# Zero to Chef

## Overview

This is the first in a series of blog posts that I will be publishing to help me get this out of my head, and also to primarily help you learn new technologies and get your foot in the door with them. Some of these things you might already be familiar with, and if you are that's great. I would still suggest going through the basics, and just anything you know. I am a firm believer in redoing the basics multiple times but applying new ideas to them is key to understanding anything.

There will be a lot of links in this first post. A lot of them are for awareness, but the actual links you'll want to be concerned with are in the meat of the post.

If you have any suggestions or other tips, please post on the blog, or visit the Blog Source code and open an Issue with your suggestions. These posts are my experience and are not a definitive truth. As with most blogs, follow with a grain of salt.

## Infrastructure Setup.

### Setting up Virtualbox

[Download Virtualbox](https://www.virtualbox.org/wiki/Downloads) from the official site. There are some Linux packages that may be provided by the packaging system. Both should work as expected. The Extensions pack may also be included in the package manager, otherwise download it directly from the Virtualbox Download site for the appropriate version of Virtualbox you are running. Your network interfaces will be restarted, but shouldn't impact anything you're doing. Once Virtualbox is installed, load the Extensions pack, and now you're ready to run Virtual Machines. You can play with this a little to become more familiar and the powerful VBoxManage command if its in your `$PATH` or `%PATH%`.

### Setting up Vagrant

[Download Vagrant](https://www.vagrantup.com/downloads.html) from their official website. Installing this will require that the system be restarted. I'm not sure why, but I've always had to do it on my Windows machines, and I just do it on my Linux machines as well to make sure nothing funky happens. Vagrant is pretty straight forward to install, and automatically comes out of the box with Virtualbox support and VMWare.

Here is where I am going to tell you to go through the Introduction or Getting Started for Vagrant to become familiar with the basics of Vagrant. There is also [a page or two](https://www.vagrantup.com/docs/virtualbox/) which shows the flexibility and power of the VBoxManage command using the customize command. This will allow you to customize the virtual machine by adding more RAM, or Hard Drive space or additional network interfaces. Anything possible with the VBoxManage command is possible with this.

Make sure you have a Vagrant Box by this part that you're comfortable to use. I typically use the latest version of CentOS which is currently CentOS 7 which is rocking the 3.* kernel. You can use Ubuntu as well, but my instructions will be CentOS based. YMMV.

### Setting up ChefDK

Since is a `Zero to Chef` series of posts, we'll be using Chef as our Configuration Management Tool. You could potentially use anything you wanted, and the ChefDK provides a lot of flexibility with Test-Kitchen included. I'm not going to get into that debate, I'm using Chef. End of story.

[Download the ChefDK](https://downloads.chef.io/chefdk) and install it for your operating system. I will tell you to use the latest, but in a production environment, or work place, you'll want to use the version that has the version of Chef-Client closest to what you're using so you're not developing with newer features than what's actually there. Installing the ChefDK is pretty straight forward and may take a long time on Windows machines. I don't know why again, but my theory is that its building the native libraries using the Ruby DevKit for Chef so they're not having to ship binaries all over the place.

## Is that it?

Setting up to use Chef, and do development is pretty easy so far. We'll worry about hooking into a Chef-Server and deploying stuff later. For now, we're going to focus on good design, good development practices and habits such as deciding what your Chef-Cookbook is going to do, what you need to test for, and the infrastructure you're deploying to. This will dictate how you'll prepare your systems for use.

For now, take a few days to go through Virtualbox, Vagrant, and ChefDK by executing a few commands on your system, and see the command outputs they give you. Reading the docs is also vital at this stage as well. Just coming into your own with these technologies is a bit overwhelming to new people, and introduces a lot of new ideas hopefully. You can run all sorts of servers using Virtualbox, and operating systems. Then you can also control all sorts of other infrastructure pieces such as Docker, AWS, OpenStack, Google Cloud Platform, Azure, Digital Ocean, Linode, RackSpace, or even Hyper-V and VMWare's vSphere. Most of these are cloud-like technologies if not entirely.

You can even control Windows Machines using Vagrant, but typically most people use Linux. Your reasons may vary, but for me its licensing issues, and being a cheapo that I am, I don't want to buy an OEM license. So, for the remainder of this series, we'll be focusing on Virtualbox controlled by Vagrant using CentOS 7 Linux. Then we'll use ChefDK to run our environments.

_**Next**_ post in the series will cover how to use Test-Kitchen, what ServerSpec and InSpec are, and what ChefSpec is. There are other tools such as Foodcritic, and Rubocop to also check your code and perform integration tests.
