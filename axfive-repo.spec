name:           axfive-repo
Version:        1.0
Release:        0
BuildArch:      noarch
Summary:        axfive repository rpm

Group:          System Environment/Base
License:        GPLv3+
Source:         https://github.com/Taywee/%{name}/archive/master.tar.gz
URL:            rpm.axfive.net

%description
This is just the rpm file that contains the repository file for the axfive repository

%prep
%setup -q -n %{name}-master

%build

%install
mkdir -p %{buildroot}/etc/yum.repos.d
cp axfive.repo %{buildroot}/etc/yum.repos.d/axfive.repo

%files
/etc/yum.repos.d/axfive.repo

%changelog


