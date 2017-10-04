<%@ Page Title="Peter Martinez" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PM_AZ_2017._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--Shrink the logo on scroll--%>
    <script>
        $(window).scroll(function () {
            if ($(".navbar").offset().top > 65) {
                $('#imageLogo').attr('height', '55');
            } else {
                $('#imageLogo').attr('height', '95');
            }
        });

        function scrollToBottom() {
            var myform = document.getElementById('contactForm');
            myform.style.display = 'none';
            window.scrollTo(0, document.body.scrollHeight);
        }
    </script>

    <script src="Scripts/Custom/longshortDisplay.js"></script>

    <div><br /></div>
    <div class="parallax-window" data-parallax="scroll" data-image-src="/Graphics/Images/sky-414199.jpg">
        <div class="col-md-12">
            <div class="overlayText">
                Hello World!
            </div>
        </div>
    </div>
    <div class="jumbotron">
        <h1 class="underlinedScript">Peter Martinez</h1>
        <h3 class="underlinedScript">Interactive Resume</h3>
    </div>

    <div>
        <%--About Me--%>
        <div class="row white-stripe">
            <div class="narrowMargin">
                <div class="col-md-4">
                    <a name="About" class="anchor"></a> <h1>About</h1>
                </div>
                <div class="col-md-8">
                    <h3>Career Background</h3>
                    <asp:Literal ID="literalCareerBackground" runat="server" Visible="true"></asp:Literal>
                    <h3>Career Objectives</h3>
                    <asp:Literal ID="literalCareerObjectives" runat="server" Visible="true"></asp:Literal>
                </div>
            </div>
        </div>
        <%--Education--%>
        <div class="row grey-stripe">
            <div class="narrowMargin">
                <div class="col-md-8">
                    <h3>Northern Arizona Univesity</h3>
                    <h5>
                        Master of Arts <span ></span> 1997
                    </h5>
                    <ul class="checkMark">
                        <li>Major: Geography</li>
                        <li>Emphasis: Geographic Information Management</li>
                        <li>Thesis: Implementing GIS in Local Government, Theoretical Models and the Experience of Flagstaff, Arizona</li>
                    </ul>
                    <h3>Arizona State University</h3>
                    <h5>
                        Bachelor of Science <span></span> 1991
                    </h5>
                    <ul class="checkMark">
                        <li>Major: Geography</li>
                        <li>Emphasis: Environmental Geography</li>
                    </ul>
                </div>
                <div class="col-md-4 lightblueBackground" style="text-align: right;">
                    <a name="Education" class="anchor"></a><h1>Education</h1>
                </div>
            </div>
        </div>
        <%--Experience--%>
        <div class="row white-stripe">
            <div class="narrowMargin">
                <div class="col-md-4">
                    <a name="EmploymentExperience" class="anchor"></a><h1>Employment Experience</h1>
                </div>
                <div class="col-md-8">
                    <h3>GB2G IT Solutions, LLC</h3>
                    <h5>2013 - Present</h5>
                    <p>
                        GB2G IT Solutions was started in February of 2013.  GB2G IT Solutions specializes in providing custom web and data management solutions to small businesses, organizations, and individuals.  Operating a small business is a great way to appreciate how all the different functions of a business must come together in order to succeed.
                    </p>
                    <p>
                        In running GB2G for the past four years, I have to be very grateful for all the project managment training that I received during my years at URS Corporation.  URS trained project managers like myself through a formal training and certification process that included client communications, contracting (we always collaborated with the Company's attorneies), producing cost estimates, runing a project, invoicing, hiring and dismissing staff (when absolutely necessary), etc.  All that training and experience was invaluable to starting and running a business.
                    </p>
                    <p>
                        GB2G IT Solutions is owned and operated by me, that means wearing many different hats and taking on all the responsibility. There were several tools that made managing the operation a little easier, one was using UpWork to interview and hire hiring freelancers when a particular expertise was needed or the work was too much for me to complete in a given time frame.  Another tool or technique was using WeWorked to maintain detailed records of what work was done on what job; it even became a requirement for freelancers working on GB2G projects.
                    </p>
                    <h3>URS Corporation</h3>
                    <h5>1998 - 2012</h5>
                    <p>
                        URS Corporation, now a part of AECOM, is an international Fortune 500 company. URS Corporation organized much of their work using business lines to form virtual groups, and maintained an open network of offices that collaborated on projects across these many disciplines. This was the perfect scenario in which to provide robust IT solutions on a multitude of projects; project location primarily in the Southwest but also around the world.
                    </p>
                    <p>
                        While at URS the Teams and Groups that I worked with provided Geographic Information System (GIS), database and programming, visual simulations, and graphics support to many projects and clients. On larger projects we build project portals, these portals included:
                    </p>
                        <ul>
                            <li>File repositories</li>
                            <li>Document management systems</li>
                            <li>Comment tracking (sometimes for 10's of thousands of comments) </li>
                            <li>Contact lists for stake holders and project staff</li>
                            <li>GIS web mapping</li>
                            <li>User controlled environment with distinct user levels</li>
                        </ul>
                    <p>
                    <p>
                        These project portals and other applications were built using MS Server, MS SQL Server, ASP.Net (initially classic ASP), and ArcIMS (initially MapObjects IMS).
                    </p>
                    <p>
                        During the years that I was with URS, we designed, developed and maintained the software, applications, and databases we used to provide web services.  We also identified requirements, purchased and maintained the servers we used for web services in our local office; our firewall and internet security was managed through another office tasked with providing security.
                    </p>
                    <h3>City of Flagstaff, Arizona</h3>
                    <h5>1994 - 1998</h5>
                    <p>
                        My work at the City of Flagstaff began with an internship which lead to a full-time position as a GIS Technician. During my time at the City I acquired a very solid foundation and understanding of GIS principles. Among other endeavors, we were building the cadastral layer on a custom control grid developed by the City’s Survey Group. To build the City's parcel layer we utilized Coordinate Geometry to enter each parcel, this afforded us a very precise base layer on which to build exceptionally accurate maps.
                    </p>
                    <p>
                        As my time at the City went on, I began assisting in the development of significant application for different departments and was promoted to GIS Programmer. We build custom applications to facilitate data entry forms for various departments including Utilities, Planning, Fire, and Survey.
                    </p>
                    <p>
                        The GIS software applications used by the City were all built on ESRI products. The programming languages were ArcInfo's AML, INFO, and ArcView's Avenue.
                    </p>
                    <p>
                        While at the City, I also assisted in regular Unix software updates, and hardware upgrades.
                    </p>
                </div>
            </div>
        </div>
        <%--Project Experience--%>
        <div class="row grey-stripe">
            <div class="narrowMargin">
                <div class="col-md-8">
                    <h3>Typical Database Application Project</h3>
                    <p>
                        Based on experience, as much as possible, a project needs to begin with a clear goal and agreed to expectations. This involves careful listening to the client.
                    </p>
                    <p>
                          The next step is to convert the ideas into illustrations or materials that can be shared and discussed.  Once the ideas are established then the application can be designed and a schedule can be established.
                    </p>
                    <p>
                        A typical database application will also includes defining specific key attributes.  These include but are not limited to the following.
                    </p>
                    <span class="keyHeading">Key Attributes to Identify:</span>
                    <ul>
                        <li><span class="keyPoint">Specific functions</span></li>
                        <li><span class="keyPoint">Output - reports or files</span></li>
                        <li><span class="keyPoint">User permissions</span></li>
                        <li><span class="keyPoint">Intended usage</span></li>
                        <li><span class="keyPoint">Key data elements</span></li>
                    </ul>
                    <span class="keyHeading">Significant Steps in Developing, Deploying and Maintaining the Application</span>
                    <ul>
                        <li><span class="keyPoint">Database design</span>, built to accomodate the data requirements identified by the client, with a goal towards eliminating data redundancie, potential growth, but limiting unnecessary complexity.</li>
                        <li><span class="keyPoint">Server environment and the server software</span>, selected based on the needs of the application and if applicable, the client's preference.</li>
                        <li><span class="keyPoint">Authentication</span> used to limit access to the system's back-end and assign roles to users.</li>
                        <li><span class="keyPoint">Web framework</span> such as bootstrap is used to assure that the application is mobile friendly.</li>
                        <li><span class="keyPoint">Application layout</span> position controls and functions in an intuitive manner so that reports, date entry forms, and administrative functions are grouped by theme, work flow or both.  Attention to detail here provides a better user experience (UX).</li>
                        <li><span class="keyPoint">Application testing and deployment</span> test, test again, and test yet again.  Compare resutls from the application reports to straight database queries.</li>
                        <li><span class="keyPoint">The application is maintained</span> make time to respond quickly to any issues that arise.  Keep a bug tracking system. </li>
                    </ul>

                    <h3>Typical Simple Website Project</h3>
                    <p>
                        Sometimes called static websites, most really are not these days they're based on powerful Content Management Systems, are much easier to develop, deploy, and maintain than a custom data managaement solution.  Unless the client specifies a particular preference, I usually use WordPress for less complex websites and use .Net web sites for more complex undertakings.
                    </p>
                    <p>
                        I enjoy working in different environments, and always try to match the technoloy to the need and not the other way around.  I very much enjoy learning and experimenting with new technologies.
                    </p>
                    <p>
                          One area that I am not well versed in is SEO and Google Analytics, a very important part of business websites today.  I am acustomed to thoroughly labeling names, captions, titles, etc. appropriately.  I create site maps, register sites with Google, etc, but that's about the extent to which I implement SEO.
                    </p>
                </div>
                <div class="col-md-4" style="text-align: right;">
                    <a name="ProjectExperience" class="anchor"></a><h1>Project Experience</h1>
                </div>
            </div>
        </div>
        <%--Skills--%>
        <div class="row white-stripe">
            <div class="narrowMargin">
                <div class="col-md-4">
                    <a name="Skills" class="anchor"></a><h1>Skills</h1>
                </div>
                <div class="col-md-8">
                    <div class="col-md-6">
                        <h3>Programming</h3>
                        <ul class="checkMark">
                            <li>C#</li>
                            <li>VB.Net</li>
                            <li>JavaScript</li>
                        </ul>
                        <h3>Database</h3>
                        <ul class="checkMark">
                            <li>MS SQL Server</li>
                            <li>MS Access</li>
                            <li>MySQL</li>
                        </ul>
                    </div>
                    <div class="col-md-6">
                        <h3>Deployment Environments</h3>
                        <ul class="checkMark">
                            <li>Azure</li>
                            <li>Plesk</li>
                            <li>Cpanel</li>
                        </ul>
                        <h3>Other Web Skills</h3>
                        <ul class="checkMark">
                            <li>HTML</li>
                            <li>CSS</li>
                            <li>Bootstrap</li>
                            <li>JQuery</li>
                            <li>JQueryUI</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <%--Contact--%>
        <div class="row grey-stripe">
            <div class="narrowMargin">
                <div class="col-md-8">
                    <div id="contactForm"> <%--<runat="server">--%>
                        <div class="row">
                            <div class="col-md-12">
                                <h4>Peter Martinez &nbsp; <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> &nbsp; <a href="mailto:peter@gb2gitsolutions.com" class="hyperlinkReverseColors">peter@gb2gitsolutions.com</a> &nbsp; <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> &nbsp; <a href="tel:1+6024196893" class="hyperlinkReverseColors">602.419.6893</a></h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label ID="labelName" runat="server" Text="*Name:" for="usr" CssClass="formBlue"></asp:Label>
                                <asp:TextBox ID="textboxName" runat="server" MaxLength="75" placeholder="first and last name" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="textboxName" ErrorMessage="* Name is required" ValidationGroup="vsMessage" SetFocusOnError="true" CssClass="errorMessage" Display="Static"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="labelCompany" runat="server" Text="Company:" for="usr" CssClass="formBlue"></asp:Label>
                                <asp:TextBox ID="textboxCompany" runat="server" MaxLength="75" placeholder="company name if applicable" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label ID="labelEmail" runat="server" Text="*Email:" for="usr" CssClass="formBlue"></asp:Label>
                                <asp:TextBox ID="textboxEmail" runat="server" MaxLength="75" placeholder="email address" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="textboxEmail" ErrorMessage="* An email address is required." ValidationGroup="vsMessage" SetFocusOnError="true" CssClass="errorMessage" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="textboxEmail" ErrorMessage="* Invalid email" ValidationGroup="vsMessage" SetFocusOnError="true" CssClass="errorMessage" Display="Static" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="labelTelephone" runat="server" Text="Phone Number:" CssClass="formBlue"></asp:Label>
                                <asp:TextBox ID="textboxPhone" runat="server" MaxLength="75" placeholder="555-555-5555" CssClass="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="textboxPhone" ErrorMessage="* Invalid phone number" ValidationGroup="vsMessage" SetFocusOnError="true" CssClass="errorMessage" Display="Static" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Label ID="labelComment" runat="server" Text="*Comment or Question:" CssClass="formBlue"></asp:Label>
                                <asp:TextBox ID="textboxComment" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" placeholder="Your comments or questions"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvComment" runat="server" ControlToValidate="textboxComment" ErrorMessage="* A comment or question is required" SetFocusOnError="true" ValidationGroup="vsMessage" CssClass="errorMessage" Display="Static"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <%--<asp:ValidationSummary ID="vsMessage" runat="server" DisplayMode="List" ShowValidationErrors="true" CssClass="errorMessage" ValidationGroup="vsMessage" HeaderText="Validation Errors:" />--%>
                                <asp:Button ID="buttonSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="buttonSubmit_Click" ValidationGroup="vsMessage" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" id="thankYou">
                            <asp:Literal ID="literalThankYou" runat="server"></asp:Literal>
                        </div>
                    </div>
                </div>
                <div class="col-md-4" style="text-align: right;">
                    <a name="Contact" class="anchor"></a><h1>Contact</h1>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
