<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>STAFF - {$config["appName"]}</title>

  <link rel="stylesheet" href="/cdn.jsdelivr.net/npm/nes.css@2.2.0/css/nes.min.css">

  <style>
    @charset "utf-8";
    @import url(https://fonts.googleapis.com/css?family=Press+Start+2P);

    @font-face {
      font-family: 'pixel';
      src: url('/theme/malio/fonts/pixel.ttf');
    }

    body {
      padding: 0 2rem;
      margin: 0 2rem;
    }

    #nescss>.container {
      max-width: 980px;
      margin: 0 auto;
      margin-top: 150px;
    }

    main p {
      font-size: 1.2rem;
    }

    h2 {
      font-size: 1.6rem;
    }

    /* Header */
    header {
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      z-index: 9;
      border-bottom: 4px solid #D3D3D3;
      background-color: white;
    }

    header>.container {
      display: flex;
      align-items: baseline;
      max-width: 980px;
      margin: 0 auto;
      padding-top: 1rem;
      transition: all 0.2s ease;
    }

    header>.container>.nav-brand {
      margin-right: auto;
    }

    .nav-brand .brand-logo {
      margin-right: 1rem;
    }

    .nav-brand>a {
      color: #212529;
      text-decoration: none;
    }

    /* Main */
    .main-content {
      margin-bottom: 4rem;
    }

    /* Footer */
    footer {
      text-align: center;
      margin-bottom: 2rem;
    }

    footer a {
      color: #333;
      text-decoration: none;
    }

    h2>a {
      margin-right: 1rem;
    }

    .topic {
      margin-bottom: 3rem;
      font-family: 'pixel';
    }

    /* Containers */
    .item.containers>.nes-container {
      display: inline-block;
      max-width: 400px;
    }


    /* Topic */
    h3.topic-title {
      display: flex;
      align-items: center;
      margin-bottom: 1rem;
    }

    h3.topic-title>i {
      margin-right: 1.5rem;
    }

    @media screen and (max-width: calc(980px - 4rem)) {
      header>.container {
        margin: 0 4rem;
      }
    }

    @media screen and (max-width: 768px) {
      body {
        margin: 2rem 0.5rem;
        padding: 0;
      }

      header>.container {
        margin: 0 0.5rem;
      }

      .github-link {
        display: none;
      }

      .message-list>.message>.nes-balloon {
        max-width: 60%;
      }
    }
  </style>

</head>

<body>
  <div id="nescss">
  </div>
</body>

<script src="/cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"></script>
<script>
  var code = "JTNDZGl2JTIwaWQlM0QlMjJuZXNjc3MlMjIlM0UlM0NoZWFkZXIlMjBjbGFzcyUzRCUyMiUyMiUzRSUzQ2RpdiUyMGNsYXNzJTNEJTIyY29udGFpbmVyJTIyJTNFJTNDZGl2JTIwY2xhc3MlM0QlMjJuYXYtYnJhbmQlMjIlM0UlM0NhJTIwaHJlZiUzRCUyMmh0dHBzJTNBJTJGJTJGZ2l0aHViLmNvbSUyRkFuYW5ra2UlMkZTU1BhbmVsLVVpbSUyMiUzRSUzQ2gxJTNFU1RBRkYlM0MlMkZoMSUzRSUzQyUyRmElM0UlM0NwJTNFJUMyJUE5JTI2bmJzcCUzQjIwMTUlMjBvcnZpY2UlM0MlMkZwJTNFJTNDJTJGZGl2JTNFJTNDJTJGZGl2JTNFJTNDJTJGaGVhZGVyJTNFJTNDZGl2JTIwY2xhc3MlM0QlMjJjb250YWluZXIlMjIlM0UlM0NtYWluJTIwY2xhc3MlM0QlMjJtYWluLWNvbnRlbnQlMjIlM0UlM0NzZWN0aW9uJTIwY2xhc3MlM0QlMjJ0b3BpYyUyMiUzRSUzQ2gyJTNFJTNDYSUyMGhyZWYlM0QlMjIlMjMlMjIlM0UlMjMlM0MlMkZhJTNFTUlUJUU4JUFFJUI4JUU1JThGJUFGJUU4JUFGJTgxJTNDJTJGaDIlM0UlM0NwJTNFJUU3JTg5JUI5JUU2JUFEJUE0JUU1JTg1JThEJUU4JUI0JUI5JUU2JThFJTg4JUU0JUJBJTg4JUU0JUJCJUJCJUU0JUJEJTk1JUU4JThFJUI3JUU1JUJFJTk3JUU1JTg5JUFGJUU2JTlDJUFDJUU3JTlBJTg0JUU0JUJBJUJBJUU4JUJGJTk5JUU0JUI4JUFBJUU4JUJEJUFGJUU0JUJCJUI2JUU1JTkyJThDJUU3JTlCJUI4JUU1JTg1JUIzJUU3JTlBJTg0JUU2JTk2JTg3JUU2JUExJUEzJUU2JTk2JTg3JUU0JUJCJUI2JUVGJUJDJTg4JUUyJTgwJTlDJUU4JUJEJUFGJUU0JUJCJUI2JUUyJTgwJTlEJUVGJUJDJTg5JUU2JTlEJUE1JUU1JUE0JTg0JUU3JTkwJTg2JUU1JTlDJUE4JUU4JUJEJUFGJUU0JUJCJUI2JUU0JUI4JUFEJUU2JUIyJUExJUU2JTlDJTg5JUU5JTk5JTkwJUU1JTg4JUI2JUVGJUJDJThDJUU1JThDJTg1JUU2JThCJUFDJUU0JUJEJTg2JUU0JUI4JThEJUU5JTk5JTkwJUU0JUJBJThFJUU2JTlEJTgzJUU1JTg4JUE5JUU0JUJEJUJGJUU3JTk0JUE4JUVGJUJDJThDJUU1JUE0JThEJUU1JTg4JUI2JUVGJUJDJThDJUU0JUJGJUFFJUU2JTk0JUI5JUVGJUJDJThDJUU1JTkwJTg4JUU1JUI5JUI2JUVGJUJDJThDJUU1JThGJTkxJUU1JUI4JTgzJUVGJUJDJThDJUU1JTg4JTg2JUU1JThGJTkxJUVGJUJDJThDJUU1JTg2JThEJUU4JUFFJUI4JUU1JThGJUFGJUU1JTkyJThDJTJGJUU2JTg4JTk2JUU5JTk0JTgwJUU1JTk0JUFFJUU4JUFGJUE1JUU4JUJEJUFGJUU0JUJCJUI2JUU3JTlBJTg0JUU1JTg5JUFGJUU2JTlDJUFDJUVGJUJDJThDJUU1JUI5JUI2JUU1JTg1JTgxJUU4JUFFJUI4JUU4JUJEJUFGJUU0JUJCJUI2JUU2JTg5JTgwJUU1JUIxJTlFJUU3JTlBJTg0JUU0JUJBJUJBJUU1JTkxJTk4JUU2JThGJTkwJUU0JUJFJTlCJUU4JUJGJTk5JUU2JUEwJUI3JUU1JTgxJTlBJUVGJUJDJThDJUU0JUJEJTg2JUU5JUExJUJCJUU3JUFDJUE2JUU1JTkwJTg4JUU0JUJCJUE1JUU0JUI4JThCJUU2JTlEJUExJUU0JUJCJUI2JUVGJUJDJTlBJTNDYnIlM0UlRTQlQjglOEElRTglQkYlQjAlRTclODklODglRTYlOUQlODMlRTUlQTMlQjAlRTYlOTglOEUlRTUlOTIlOEMlRTYlOUMlQUMlRTglQUUlQjglRTUlOEYlQUYlRTUlQTMlQjAlRTYlOTglOEUlRTUlQkYlODUlRTklQTElQkIlRTUlOEMlODUlRTUlOTAlQUIlRTUlOUMlQTglRTUlODYlODUlRTYlOUMlQUMlRTglQkQlQUYlRTQlQkIlQjYlRTclOUElODQlRTUlODklQUYlRTYlOUMlQUMlRTYlODglOTYlRTUlQUUlOUUlRTglQjQlQTglRTYlODAlQTclRTklODMlQTglRTUlODglODYlRTMlODAlODIlM0NiciUzRSVFNiU5QyVBQyVFOCVCRCVBRiVFNCVCQiVCNiVFNiU4QyU4OSVFMiU4MCU5QyVFNSU4RSU5RiVFNiVBMCVCNyVFMiU4MCU5RCVFNiU4RiU5MCVFNCVCRSU5QiVFRiVCQyU4QyVFNCVCOCU4RCVFOSU5OSU4NCVFNiU5QyU4OSVFNCVCQiVCQiVFNCVCRCU5NSVFNSVCRCVBMiVFNSVCQyU4RiVFNyU5QSU4NCVFNiU5OCU4RSVFNyVBNCVCQSVFNiU4OCU5NiVFNiU5QSU5NyVFNyVBNCVCQSVFNCVCRiU5RCVFOCVBRiU4MSVFOSVCQiU5OCVFNyVBNCVCQSVFNyU5QSU4NCVFRiVCQyU4QyVFNSU4QyU4NSVFNiU4QiVBQyVFNCVCRCU4NiVFNCVCOCU4RCVFOSU5OSU5MCVFNCVCQSU4RSVFNSVBRiVCOSVFOSU4MCU4MiVFOSU5NCU4MCVFNiU4MCVBNyVFNyU5QSU4NCVFNCVCRiU5RCVFOCVBRiU4MSVFRiVCQyU4QyVFOSU4MCU4MiVFNyU5NCVBOCVFNCVCQSU4RSVFNyU4OSVCOSVFNSVBRSU5QSVFNyU5QiVBRSVFNyU5QSU4NCVFNSU5MiU4QyVFNCVCOCU4RCVFNCVCRSVCNSVFNiU5RCU4MyVFMyU4MCU4MiVFNSU5QyVBOCVFNCVCQiVCQiVFNCVCRCU5NSVFNiU4MyU4NSVFNSU4NiVCNSVFNCVCOCU4QiVFRiVCQyU4QyVFNCVCRCU5QyVFOCU4MCU4NSVFNiU4OCU5NiVFNyU4OSU4OCVFNiU5RCU4MyVFNiU4QyU4MSVFNiU5QyU4OSVFOCU4MCU4NSVFNSVBRiVCOSVFNCVCQiVCQiVFNCVCRCU5NSVFNyVCNCVBMiVFOCVCNSU5NCVFRiVCQyU4QyVFNiU4RCU5RiVFNSU5RCU4RiVFNiU4OCU5NiVFNSU4NSVCNiVFNCVCQiU5NiVFOCVCNCVBMyVFNCVCQiVCQiVFNSU5RCU4NyVFNCVCOCU4RCVFOCVCNCU5RiVFNCVCQiVCQiVFNCVCRCU5NSVFOCVCNCVBMyVFNCVCQiVCQiVFOCVCNCVBMyVFNCVCQiVCQiVFRiVCQyU4QyVFNiU5NyVBMCVFOCVBRSVCQSVFNiU5OCVBRiVFNSU5QyVBOCVFNSU5MCU4OCVFNSU5MCU4QyVFRiVCQyU4QyVFNiVCMCU5MSVFNCVCQSU4QiVFNCVCRSVCNSVFNiU5RCU4MyVFOCVBMSU4QyVFNCVCOCVCQSVFNiU4OCU5NiVFNSU4NSVCNiVFNCVCQiU5NiVFNiU5NiVCOSVFOSU5RCVBMiVFRiVCQyU4QyVFNCVCOCU4RSVFNiU5QyVBQyVFOCVCRCVBRiVFNCVCQiVCNiVFNiU4OCU5NiVFNiU5QyVBQyVFOCVCRCVBRiVFNCVCQiVCNiVFNyU5QSU4NCVFNCVCRCVCRiVFNyU5NCVBOCVFNiU4OCU5NiVFNSU4NSVCNiVFNCVCQiU5NiVFNCVCQSVBNCVFNiU5OCU5MyVFNiU5QyU4OSVFNSU4NSVCMyVFNiU4OCU5NiVFNCVCOCU4RSVFNCVCOSU4QiVFNiU5QyU4OSVFNSU4NSVCMyVFOCVCRCVBRiVFNCVCQiVCNiVFMyU4MCU4MiUzQyUyRnAlM0UlM0MlMkZzZWN0aW9uJTNFJTNDc2VjdGlvbiUyMGNsYXNzJTNEJTIydG9waWMlMjIlM0UlM0NoMiUzRSUzQ2ElMjBocmVmJTNEJTIyJTIzJTIyJTNFJTIzJTNDJTJGYSUzRSVFNSU4NSU4RCVFOCVCNCVBMyVFNSVBMyVCMCVFNiU5OCU4RSUzQyUyRmgyJTNFJTNDcCUzRSVFNiU4MiVBOCVFNSVCRCU5MyVFNSU4OSU4RCVFNiU4OSU4MCVFOCVBRSVCRiVFOSU5NyVBRSVFNyU5QSU4NCVFNyVBQiU5OSVFNyU4MiVCOSVFNCVCRCVCRiVFNyU5NCVBOCVFNyU5QSU4NCVFNiU5OCVBRiVFNCVCOCU4QiVFOSU5RCVBMiVFNiU4OSU4MCVFNiU4RiU5MCVFNSU4OCVCMCVFNyU5QSU4NCVFNSVCQyU4MCVFNiVCQSU5MCVFNyVBOCU4QiVFNSVCQSU4RiVFMyU4MCU4MiVFNiU4MiVBOCVFOCU4MyVCRCVFNyU5QyU4QiVFNSU4OCVCMCVFOCVCRiU5OSVFNCVCOCVBQSVFOSVBMSVCNSVFOSU5RCVBMiVFNCVCQiU4NSVFNCVCQiVBMyVFOCVBMSVBOCVFOCVCRiU5OSVFNCVCOCVBQSVFNyVBQiU5OSVFNyU4MiVCOSVFNCVCRCVCRiVFNyU5NCVBOCVFNCVCQSU4NiVFNiU5QyVBQyVFNyVBOCU4QiVFNSVCQSU4RiVFRiVCQyU4QyVFNSU4NSVCNiVFNCVCRCVCRiVFNyU5NCVBOCVFOCVCRiU4NyVFNyVBOCU4QiVFNCVCOCVBRCVFNSU4RiU5MSVFNyU5NCU5RiVFNyU5QSU4NCVFNCVCOCU4MCVFNSU4OCU4NyVFOSU5NyVBRSVFOSVBMiU5OCVFOSU5QyU4MCVFOCVBNiU4MSVFNSU4NSVCNiVFOCU4NyVBQSVFOCVBMSU4QyVFOCVBNyVBMyVFNSU4NiVCMyVFRiVCQyU4QyVFNiU5QyVBQyVFNyVBOCU4QiVFNSVCQSU4RiVFNCVCOCU4RCVFNiU4OSVCRiVFNiU4QiU4NSVFNCVCQiVCQiVFNCVCRCU5NSVFOCVCNCVBMyVFNCVCQiVCQiVFMyU4MCU4MiUzQyUyRnAlM0UlM0NkaXYlMjBjbGFzcyUzRCUyMm5lcy10YWJsZS1yZXNwb25zaXZlJTIyJTNFJTNDdGFibGUlMjBjbGFzcyUzRCUyMm5lcy10YWJsZSUyMGlzLWJvcmRlcmVkJTIyJTNFJTNDdGJvZHklM0UlM0N0ciUzRSUzQ3RkJTNFJUU1JThFJTlGJUU0JUJEJTlDJTNDJTJGdGQlM0UlM0N0ZCUzRSUzQ2ElMjBocmVmJTNEJTIyaHR0cHMlM0ElMkYlMkZnaXRodWIuY29tJTJGb3J2aWNlJTJGJTIyJTNFb3J2aWNlJTNDJTJGYSUzRSUzQyUyRnRkJTNFJTNDJTJGdHIlM0UlM0N0ciUzRSUzQ3RkJTNFJUU3JThFJUIwJUU5JTk4JUI2JUU2JUFFJUI1JUU3JUJCJUI0JUU2JThBJUE0JTNDJTJGdGQlM0UlM0N0ZCUzRSUzQ2ElMjBocmVmJTNEJTIyaHR0cHMlM0ElMkYlMkZnaXRodWIuY29tJTJGVGFsb2NhbiUyMiUzRUFuYW5ra2UlM0MlMkZhJTNFJUVGJUJDJThDJTNDYSUyMGhyZWYlM0QlMjJodHRwcyUzQSUyRiUyRmdpdGh1Yi5jb20lMkZnYWxheHljaHVjayUyMiUzRWdhbGF4eXElM0MlMkZhJTNFJUVGJUJDJThDJTNDYSUyMGhyZWYlM0QlMjJodHRwcyUzQSUyRiUyRmdpdGh1Yi5jb20lMkZkdW1wbGluMjMzJTIyJTNFZHVtcGxpbiUzQyUyRmElM0UlRUYlQkMlOEMlM0NhJTIwaHJlZiUzRCUyMmh0dHBzJTNBJTJGJTJGZ2l0aHViLmNvbSUyRm14aWhhbiUyMiUzRVJpbiUyMFNBTUElM0MlMkZhJTNFJUVGJUJDJThDJTNDYSUyMGhyZWYlM0QlMjJodHRwcyUzQSUyRiUyRmdpdGh1Yi5jb20lMkZ4Y3huaWclMjIlM0VNaWt1JTNDJTJGYSUzRSVFRiVCQyU4QyUzQ2ElMjBocmVmJTNEJTIyaHR0cHMlM0ElMkYlMkZnaXRodWIuY29tJTJGWkpZMjAwMyUyMiUzRVRvbnklMjBab3UlM0MlMkZhJTNFJUVGJUJDJThDJTNDYSUyMGhyZWYlM0QlMjJodHRwcyUzQSUyRiUyRmdpdGh1Yi5jb20lMkZsYXVyaWVyeWF5b2klMjIlM0VOeW1waCUzQyUyRmElM0UlM0MlMkZ0ZCUzRSUzQyUyRnRyJTNFJTNDdHIlM0UlM0N0ZCUzRSVFNyU5QiU5MSVFNyU5RCVBMyUzQyUyRnRkJTNFJTNDdGQlM0UlM0NhJTIwaHJlZiUzRCUyMmh0dHBzJTNBJTJGJTJGZ2l0aHViLmNvbSUyRlRhbG9jYW4lMjIlM0VBbmFua2tlJTNDJTJGYSUzRSUzQyUyRnRkJTNFJTNDJTJGdHIlM0UlM0N0ciUzRSUzQ3RkJTNFJUU0JUJEJTlDJUU3JTk0JUJCJTNDJTJGdGQlM0UlM0N0ZCUzRSUzQ2ElMjBocmVmJTNEJTIyaHR0cHMlM0ElMkYlMkZnaXRodWIuY29tJTJGRGFlbW9uaXRlJTJGJTIyJTNFRGFlbW9uaXRlJTNDJTJGYSUzRSVFRiVCQyU4QyUzQ2ElMjBocmVmJTNEJTIyaHR0cHMlM0ElMkYlMkZnaXRodWIuY29tJTJGZ2FsYXh5Y2h1Y2slMjIlM0VnYWxheHlxJTNDJTJGYSUzRSUzQyUyRnRkJTNFJTNDJTJGdHIlM0UlM0N0ciUzRSUzQ3RkJTNFJUU2JUIwJUI4JUU4JUJGJTlDJUU1JTk2JTlDJUU2JUFDJUEyJTNDJTJGdGQlM0UlM0N0ZCUzRSVFNiVCMCVCOCVFOCVCRiU5QyVFNSU5NiU5QyVFNiVBQyVBMiUzQ2ElMjBocmVmJTNEJTIyaHR0cHMlM0ElMkYlMkZ0Lm1lJTJGQW5hbmtrZSUyMiUzRUFuYW5ra2UlM0MlMkZhJTNFJTNDJTJGdGQlM0UlM0MlMkZ0ciUzRSUzQ3RyJTNFJTNDdGQlM0UlRTglQkYlQUIlRTUlQUUlQjMlM0MlMkZ0ZCUzRSUzQ3RkJTNFJUU1JUE2JTgyJUU2JTlFJTlDJUU0JUJEJUEwJUU0JUJCJUFDJUU3JTlDJThCJUU4JUE3JTgxJUU0JUJBJTg2JTNDYSUyMGhyZWYlM0QlMjJodHRwcyUzQSUyRiUyRnR3aXR0ZXIuY29tJTJGa290b21laTIlMjIlM0Vrb3RvbWVpJTNDJTJGYSUzRSVFRiVCQyU4QyVFOCVBRiVCNyUyRnBycHIlRTUlQjklQjYlRTglQUUlQTklRTQlQkIlOTYlRTUlOEUlQkIlRTUlQUQlQTYlRTQlQjklQTAlM0MlMkZ0ZCUzRSUzQyUyRnRyJTNFJTNDdHIlM0UlM0N0ZCUzRSVFNSU4NyVCQSVFNiVCQyU5NCUzQyUyRnRkJTNFJTNDdGQlM0UlM0NhJTIwaHJlZiUzRCUyMmh0dHAlM0ElMkYlMkZtZW5neWFuZy53YW5nJTJGJTIyJTNFbWVuZ3lhbmclM0MlMkZhJTNFJUVGJUJDJThDJTNDYSUyMGhyZWYlM0QlMjJodHRwJTNBJTJGJTJGdG9ueS5lY3kucmVuJTJGJTIyJTNFdG9ueSUzQyUyRmElM0UlM0MlMkZ0ZCUzRSUzQyUyRnRyJTNFJTNDdHIlM0UlM0N0ZCUzRSVFOSVCOCVBMyVFOCVCMCVBMiUzQyUyRnRkJTNFJTNDdGQlM0UlRTYlODklODAlRTYlOUMlODklRTglQTIlQUIlRTUlQkMlOTUlRTclOTQlQTglRTglQkYlODclRTQlQkIlQTMlRTclQTAlODElRTclOUElODQlRTUlOTAlOEMlRTUlQUQlQTYlRUYlQkMlOEMlRTQlQkIlQTUlRTUlOEYlOEElRTYlODklODAlRTYlOUMlODklRTYlOEYlOTAlRTQlQkElQTQlRTglQkYlODdQUiVFNyU5QSU4NCVFNSU5MCU4QyVFNSVBRCVBNiVFMyU4MCU4MiVFNSVCRCU5MyVFNyU4NCVCNiVFRiVCQyU4QyVFOCVCRiU5OCVFNiU5QyU4OSVFNSU5QyVBOCVFNCVCRCVCRiVFNyU5NCVBOCVFOCVCRiU5OSVFNCVCQiVCRCVFNyVBOCU4QiVFNSVCQSU4RiVFNyU5QSU4NCVFNCVCRCVBMCVFNiU4OCU5MVRhJUUzJTgwJTgyJTNDJTJGdGQlM0UlM0MlMkZ0ciUzRSUzQ3RyJTNFJTNDdGQlM0UlRTYlOUMlQUMlRTclQTglOEIlRTUlQkElOEYlRTclOUElODQlRTUlOEYlODIlRTQlQjglOEUlRTQlQkElQkElRTUlOTElOTglRTUlODglOTclRTglQTElQTglM0MlMkZ0ZCUzRSUzQ3RkJTNFJUU2JUFEJUE0JUU1JTg4JTk3JUU4JUExJUE4JUU0JUI4JUJBJUU1JThGJTgyJUU0JUI4JThFJUU1JTg4JUIwJTNDYSUyMGhyZWYlM0QlMjJodHRwcyUzQSUyRiUyRmdpdGh1Yi5jb20lMkZBbmFua2tlJTJGU1NQYW5lbC1VaW0lMjIlM0VTU1BhbmVsJTIwVjMlMjBNb2QlMjBVSU0lM0MlMkZhJTNFJUU0JUI4JUFEJUU3JTlBJTg0JUU0JUJBJUJBJUU1JTkxJTk4JUVGJUJDJThDJUU1JTlDJUE4JUU2JUFEJUE0JUU4JUExJUE4JUU3JUE0JUJBJUU2JTg0JTlGJUU4JUIwJUEyJUUzJTgwJTgyJTNDJTJGdGQlM0UlM0MlMkZ0ciUzRSUzQyUyRnRib2R5JTNFJTNDJTJGdGFibGUlM0UlM0MlMkZkaXYlM0UlM0MlMkZzZWN0aW9uJTNFJTNDc2VjdGlvbiUyMGNsYXNzJTNEJTIydG9waWMlMjIlM0UlM0NoMiUzRSUzQ2ElMjBocmVmJTNEJTIyJTIzJTIyJTNFJTIzJTNDJTJGYSUzRU1hbGlvJUU0JUI4JUJCJUU5JUEyJTk4JTNDJTJGaDIlM0UlM0NkaXYlMjBjbGFzcyUzRCUyMmxpc3RzJTIyJTNFJTNDcCUzRSVFNyU5NCVCMSUzQ2ElMjBocmVmJTNEJTIyaHR0cHMlM0ElMkYlMkZ0Lm1lJTJGZWRpdFhZJTIydGFyZ2V0JTNEJTIyX2JsYW5rJTIycmVsJTNEJTIybm9vcGVuZXIlMjIlM0UlMjZuYnNwJTNCJTQwZWRpdFhZJTI2bmJzcCUzQiUzQyUyRmElM0UlRTQlQkYlQUUlRTYlOTQlQjklRTklODAlODIlRTklODUlOEQlRTMlODAlODIlM0MlMkZwJTNFJTNDJTJGZGl2JTNFJTNDJTJGc2VjdGlvbiUzRSUzQ3NlY3Rpb24lMjBjbGFzcyUzRCUyMnRvcGljJTIyJTNFJTNDaDIlM0UlM0NhJTIwaHJlZiUzRCUyMiUyMyUyMiUzRSUyMyUzQyUyRmElM0VDcmVkaXRzJTNDJTJGaDIlM0UlM0NkaXYlMjBjbGFzcyUzRCUyMmxpc3RzJTIyJTNFJTNDdWwlMjBjbGFzcyUzRCUyMm5lcy1saXN0JTIwaXMtY2lyY2xlJTIyJTNFJTNDbGklM0UlM0NhJTIwaHJlZiUzRCUyMmh0dHBzJTNBJTJGJTJGZ2l0aHViLmNvbSUyRm5vc3RhbGdpYy1jc3MlMkZORVMuY3NzJTIydGFyZ2V0JTNEJTIyX2JsYW5rJTIycmVsJTNEJTIybm9vcGVuZXIlMjIlM0VORVMuY3NzJTNDJTJGYSUzRSUyNm5ic3AlM0ItJTI2bmJzcCUzQk5FUy1zdHlsZSUyMENTUyUyMEZyYW1ld29yayUzQyUyRmxpJTNFJTNDbGklM0UlM0NhJTIwaHJlZiUzRCUyMmh0dHBzJTNBJTJGJTJGZ2l0aHViLmNvbSUyRnN0aXNsYSUyRnN0aXNsYSUyMnRhcmdldCUzRCUyMl9ibGFuayUyMnJlbCUzRCUyMm5vb3BlbmVyJTIyJTNFc3Rpc2xhJTNDJTJGYSUzRSUyNm5ic3AlM0ItJTI2bmJzcCUzQkZyZWUlMjBCb290c3RyYXAlMjBBZG1pbiUyMFRlbXBsYXRlJTNDJTJGbGklM0UlM0MlMkZ1bCUzRSUzQyUyRmRpdiUzRSUzQyUyRnNlY3Rpb24lM0UlM0MlMkZtYWluJTNFJTNDZm9vdGVyJTNFJTNDcCUzRSUzQ3NwYW4lM0UlQzIlQTklM0MlMkZzcGFuJTNFJTNDYSUyMGhyZWYlM0QlMjIlMkYlMjJyZWwlM0QlMjJub29wZW5lciUyMmlkJTNEJTIyc2l0ZS1uYW1lJTIyJTNFJTNDJTJGYSUzRSUzQ3NwYW4lM0UuJTNDJTJGc3BhbiUzRSUyNm5ic3AlM0JUaGVtZSUyMGJ5JTNDYSUyMGhyZWYlM0QlMjJodHRwcyUzQSUyRiUyRnQubWUlMkZlZGl0WFklMjJ0YXJnZXQlM0QlMjJfYmxhbmslMjJyZWwlM0QlMjJub29wZW5lciUyMiUzRSUyNm5ic3AlM0IlNDBlZGl0WFklM0MlMkZhJTNFJTNDJTJGcCUzRSUzQyUyRmZvb3RlciUzRSUzQyUyRmRpdiUzRSUzQyUyRmRpdiUzRQ==";
  $('body').html(decodeURIComponent(atob(code)));
  $('#site-name').text(' {$config["appName"]}');
</script>

</html>