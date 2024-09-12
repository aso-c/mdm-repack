# mdm-repack
Repack Mint Display Manager deb-package: upgrade dependencies 
Not Rebuild, Repack ony!!!

### Required Commands
- dpkg-deb -e &lt;package_name&gt;  
  dpkg -e &lt;package_name&gt; - extract control information from the package &lt;package_name&gt; (extract the "DEBIAN" catalog);
- dpkg-deb -x &lt;package_name&gt; &lt;directory_name&gt;  
  (dpkg -x &lt;package_name&gt; &lt;directory_name&gt;) - extract package &lt;package_name&gt; into &lt;directory_name&gt;;
- dpkg-deb -e &lt;package_name&gt; &lt;directory_name&gt;/DEBIAN  
  (dpkg -x &lt;package_name&gt; &lt;directory_name&gt;) - extract control information from the package &lt;package_name&gt; into &lt;directory_name&gt;/DEBIAN; (need for rebuild of the package);
- dpkg-deb -b &lt;directory_name&gt; &lt;archive_name&gt;  
  (dpkg -b &lt;directory_name&gt; &lt;archive_name&gt;) - create package archive &lt;archive_name&gt; from the &lt;directory_name&gt;;

Typical workflow:

- Extract early version of package.
- Update the control information & other needed files (changelog etc.).
- Repack package with updated debian revision (increase final number xx.yy.z-aa.bb.cc-i , for example).
- Commit new revision.


### Changes:

- Mon, 10 Apr 2023 11:04:20 +0400: **mdm_2.0.19+vera-2_amd64.deb**

  * update dependence: gir1.2-webkit-3.0 -> gir1.2-webkit2-4.0


- Fri, 24 Mar 2023 13:40:00 +0400: **mdm_2.0.19+vera-1_amd64.deb**

  * update debian revision: from vanessa to vera
  * update dependence: python -> python2


- Fri, 23 Sep 2022 10:00:00 +0400: **mdm_2.0.19+vanessa-0_amd64.deb**  

    Update debian revision: from sylvia to vanessa, 2.0.19+vanessa-0, w/o any repack.  


- Initial revision, original pkg. Fri, 23 Sep 2022 09:00:00 +0400: **mdm_2.0.19+sylvia_amd64.deb**
    + Additional suggested packages: 
        + mint-mdm-themes-gdm_1.8.1_all.deb 
        + mint-mdm-themes-html_2.0.15_all.deb 
        + mint-mdm-themes_2014.10.29_all.deb 
    + Backup dependency support packages:  
        + gir1.2-javascriptcoregtk-3.0_2.4.11-3_amd64.deb 
        + gir1.2-webkit-3.0_2.4.11-3_amd64.deb  

     Original dependencies:  
Depends: libatk1.0-0 (>= 1.12.4), libc6 (>= 2.15), libdbus-1-3 (>= 1.9.14), libdbus-glib-1-2 (>= 0.78), libdmx1, libgdk-pixbuf2.0-0 (>= 2.22.0), libglade2-0 (>= 1:2.6.4-2~), libglib2.0-0 (>= 2.37.3), libgnomecanvas2-0 (>= 2.11.1), libgtk2.0-0 (>= 2.24.0), libpam0g (>= 0.99.7.1), libpango-1.0-0 (>= 1.14.0), libpangoft2-1.0-0 (>= 1.14.0), librsvg2-2 (>= 2.14.4), libselinux1 (>= 1.32), libwebkitgtk-1.0-0 (>= 1.3.10), libx11-6, libxau6, libxi6, libxinerama1, libxml2 (>= 2.7.4), debconf (>= 0.5) | debconf-2.0, init-system-helpers (>= 1.18~), adduser, libpam-modules (>= 0.99.7.1), libpam-runtime (>= 0.99.7.1), cinnamon-session | gnome-session | x-session-manager | x-window-manager | x-terminal-emulator, gksu (>= 1.0.7), lsb-base (>= 3.2-14), librsvg2-common, gir1.2-webkit-3.0, gir1.2-gtk-3.0, python, mdm-themes
Recommends: whiptail | dialog, zenity, xserver-xorg
Suggests: locales, pm-utils, libpam-gnome-keyring
Conflicts: fast-user-switch-applet (<< 2.17.4), gdm, gdm3, gnome-panel (<< 2.19.2), gnome-screensaver (<< 2.17.7), gnome-session (<< 2.19.2)
