--- 
title       : EDA on LendingClub Data
subtitle    : 
author      : Lu Han, Xiaoyao Yang, Liangquan Zhou
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, interactive]            # {mathjax, quiz, bootstrap}
ext_widgets : {rCharts: [libraries/nvd3, libraries/morris, libraries/highcharts]}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- 


<!-- Limit image width and height -->
<style type='text/css'>

t1 {
	border: 2px solid black;
	border-radius: 5px;
	background-color: #308014;
	/*Add your CSS here!*/
	float:right;
  margin: 20px
}

t2 {
  float: right;
  margin: 40px
}

t3 {
  border: 2px solid black;
  border-radius: 5px;
	/*Add your CSS here!*/
}

t4 {
  float: left;
  margin: 10px
}
</style>




## Outline

* <h3>Background<h3>
* <h3>Data Source<h3>
* <h3>Visualization<h3>

--- .segue .dark

## Background

--- 

<a href = "http://en.wikipedia.org/wiki/Lending_Club"> <img src = "LendingClub_logo.jpg"/></a>

> * The biggest [Peer-to-Peer lending](http://en.wikipedia.org/wiki/Peer-to-peer_lending) (P2P) company in the world.
> * Operates an online lending platform that enables borrowers to obtain a loan, and investors to purchase notes backed by payments made on loans. 
> * Founded on 2006, went Public on December 11, 2014.

--- 

## How P2P works?

<t1><img src = "LC.jpg"></img></t1>

* Borrowers complete applications on LendingClub.com

* Lending Club evaluates the information, determines an interest rate, and instantly presents a variety of offers to qualified borrowers.

* Investors select loans to invest and earn monthly returns.
  - https://www.lendingclub.com/browse/browse.action

---

## Advantages

> * For Borrowers
  - Easy online application
  - Low fixed rates
  - Fixed monthly payments
  - Flexible terms
  - No prepayment penalties

<t2>

> * For Investors
  - Returns from 5% to 25%
  - Monthly cash flow
  - Easy to diversify many loans
  
</t2>

---

## Concerns

> * Loans could be defaulted. 
> * If a loan is defaulted:
  - impact on the borrower's credit score.
  - investment losses for investors.

---

## Objective: Exploratory Data Analysis on Lending Club Data

<q>Explore the influential factors of loans properties and major borrower features.</q>

--- .segue .dark

## Data Source

---

## Data Introduction

> * Lending Club publish all issued loans data. 
  - [https://www.lendingclub.com/info/download-data.action](https://www.lendingclub.com/info/download-data.action)

> * More than 400 thousands loans. From July 2007 to September 2014.

> * Each loan record contains about 100 features, including: 
  - <font color = "red">Loan Properties</font>:  Loan Amount, Loan Grade, Term, Interest Rate, Loan Purpose, etc.
  - <font color = "red">Borrower Profile</font>: Annual Income, Credit Score ([FICO Score](http://en.wikipedia.org/wiki/Credit_score_in_the_United_States#FICO_score)), [Debt-to-Income Ratio](http://en.wikipedia.org/wiki/Debt-to-income_ratio), Address, Home Ownership, Open Credit Lines, Delinquency History, etc.
  - Loan Statistics: Pricipal received, Interest received, Last Payment, Next Payment, Late Fees, Recoveries, etc.

---

## A snapshot of data...

<t4><img src = "data_sample.jpg"/></t4> <br> <br> <br> <br> <br> <h2>...</h2>

<br> <br> <br> <br> <br> <br> 

<h2 align = "center">...</h2>

---

## Data Processing

> * Keep variables we are interested in. 
  - <font color = "red">Loan Properties</font>: Loan Amount, Loan Grade, Term, Loan Purpose.
  - <font color = "red">Borrower Profile</font>: Annual Income, Credit Score, Debt-to-Income Ratio, Address, Home Ownership, Open Accounts, Delinquency History. 
  
> * Drop missing values and outliers. 

> * Reformatting and Reshaping.

--- .segue .dark

## Visualization

---

## Visualization 

> * For Loan Properties:
  - Amount
  - Grade
  - Term
  - Purpose
  
> * For Borrower Profiles:
  - Annual income
  - Credit Score
  - Debt-to-Income Ratio
  - Bank Account Delinquency History

---

## Total Loan Amount Trend (in millions)


<div id = 'chart1' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart1()
    });
    function drawchart1(){  
      var opts = {
 "dom": "chart1",
"width":    800,
"height":    400,
"x": "issue_d",
"y": "loan_amnt",
"group": "grade",
"type": "stackedAreaChart",
"id": "chart1" 
},
        data = [
 {
 "grade": "A",
"issue_d": 2007,
"loan_amnt":              0 
},
{
 "grade": "A",
"issue_d": 2008,
"loan_amnt":              2 
},
{
 "grade": "A",
"issue_d": 2009,
"loan_amnt":              9 
},
{
 "grade": "A",
"issue_d": 2010,
"loan_amnt":             25 
},
{
 "grade": "A",
"issue_d": 2011,
"loan_amnt":             52 
},
{
 "grade": "A",
"issue_d": 2012,
"loan_amnt":            121 
},
{
 "grade": "A",
"issue_d": 2013,
"loan_amnt":            271 
},
{
 "grade": "A",
"issue_d": 2014,
"loan_amnt":            444 
},
{
 "grade": "B",
"issue_d": 2007,
"loan_amnt":              1 
},
{
 "grade": "B",
"issue_d": 2008,
"loan_amnt":              5 
},
{
 "grade": "B",
"issue_d": 2009,
"loan_amnt":             16 
},
{
 "grade": "B",
"issue_d": 2010,
"loan_amnt":             40 
},
{
 "grade": "B",
"issue_d": 2011,
"loan_amnt":             75 
},
{
 "grade": "B",
"issue_d": 2012,
"loan_amnt":            220 
},
{
 "grade": "B",
"issue_d": 2013,
"loan_amnt":            596 
},
{
 "grade": "B",
"issue_d": 2014,
"loan_amnt":            715 
},
{
 "grade": "C",
"issue_d": 2007,
"loan_amnt":              1 
},
{
 "grade": "C",
"issue_d": 2008,
"loan_amnt":              5 
},
{
 "grade": "C",
"issue_d": 2009,
"loan_amnt":             13 
},
{
 "grade": "C",
"issue_d": 2010,
"loan_amnt":             27 
},
{
 "grade": "C",
"issue_d": 2011,
"loan_amnt":             48 
},
{
 "grade": "C",
"issue_d": 2012,
"loan_amnt":            153 
},
{
 "grade": "C",
"issue_d": 2013,
"loan_amnt":            567 
},
{
 "grade": "C",
"issue_d": 2014,
"loan_amnt":            830 
},
{
 "grade": "D",
"issue_d": 2007,
"loan_amnt":              1 
},
{
 "grade": "D",
"issue_d": 2008,
"loan_amnt":              4 
},
{
 "grade": "D",
"issue_d": 2009,
"loan_amnt":              9 
},
{
 "grade": "D",
"issue_d": 2010,
"loan_amnt":             21 
},
{
 "grade": "D",
"issue_d": 2011,
"loan_amnt":             37 
},
{
 "grade": "D",
"issue_d": 2012,
"loan_amnt":            114 
},
{
 "grade": "D",
"issue_d": 2013,
"loan_amnt":            283 
},
{
 "grade": "D",
"issue_d": 2014,
"loan_amnt":            607 
},
{
 "grade": "E",
"issue_d": 2007,
"loan_amnt":              1 
},
{
 "grade": "E",
"issue_d": 2008,
"loan_amnt":              3 
},
{
 "grade": "E",
"issue_d": 2009,
"loan_amnt":              4 
},
{
 "grade": "E",
"issue_d": 2010,
"loan_amnt":             12 
},
{
 "grade": "E",
"issue_d": 2011,
"loan_amnt":             31 
},
{
 "grade": "E",
"issue_d": 2012,
"loan_amnt":             70 
},
{
 "grade": "E",
"issue_d": 2013,
"loan_amnt":            161 
},
{
 "grade": "E",
"issue_d": 2014,
"loan_amnt":            300 
},
{
 "grade": "F",
"issue_d": 2007,
"loan_amnt":              1 
},
{
 "grade": "F",
"issue_d": 2008,
"loan_amnt":              1 
},
{
 "grade": "F",
"issue_d": 2009,
"loan_amnt":              1 
},
{
 "grade": "F",
"issue_d": 2010,
"loan_amnt":              5 
},
{
 "grade": "F",
"issue_d": 2011,
"loan_amnt":             15 
},
{
 "grade": "F",
"issue_d": 2012,
"loan_amnt":             33 
},
{
 "grade": "F",
"issue_d": 2013,
"loan_amnt":             84 
},
{
 "grade": "F",
"issue_d": 2014,
"loan_amnt":             89 
},
{
 "grade": "G",
"issue_d": 2007,
"loan_amnt":              0 
},
{
 "grade": "G",
"issue_d": 2008,
"loan_amnt":              1 
},
{
 "grade": "G",
"issue_d": 2009,
"loan_amnt":              1 
},
{
 "grade": "G",
"issue_d": 2010,
"loan_amnt":              2 
},
{
 "grade": "G",
"issue_d": 2011,
"loan_amnt":              4 
},
{
 "grade": "G",
"issue_d": 2012,
"loan_amnt":              7 
},
{
 "grade": "G",
"issue_d": 2013,
"loan_amnt":             20 
},
{
 "grade": "G",
"issue_d": 2014,
"loan_amnt":             30 
} 
]
  
      if(!(opts.type==="pieChart" || opts.type==="sparklinePlus" || opts.type==="bulletChart")) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? 'main' : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .width(opts.width)
          .height(opts.height)
          
        if (opts.type != "bulletChart"){
          chart
            .x(function(d) { return d[opts.x] })
            .y(function(d) { return d[opts.y] })
        }
          
         
        
          
        chart.xAxis
  .axisLabel("Year")

        
        
        chart.yAxis
  .axisLabel("Total Loan Amount")
  .width(    62)
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>

> * The P2P Lending Market grows really fast in recent 3 years.

---

## Loan Amount by States

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2.png) 

---

## Loan Purpose Decomposition


<div id = 'chart3' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart3",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": null 
},
"yAxis": [
 {
 "title": {
 "text": "number_of_loans" 
} 
} 
],
"series": [
 {
 "data": [
 [
 "car",
5146 
],
[
 "credit_card",
96787 
],
[
 "debt_consolidation",
254366 
],
[
 "educational",
422 
],
[
 "home_improvement",
24880 
],
[
 "house",
2159 
],
[
 "major_purchase",
9254 
],
[
 "medical",
4281 
],
[
 "moving",
2822 
],
[
 "other",
21997 
],
[
 "renewable_energy",
332 
],
[
 "small_business",
6704 
],
[
 "vacation",
2318 
],
[
 "wedding",
2341 
] 
],
"type": "bar",
"marker": {
 "radius":              3 
} 
} 
],
"legend": {
 "enabled": false 
},
"xAxis": [
 {
 "title": {
 "text": "purpose" 
},
"categories": [ "car", "credit_card", "debt_consolidation", "educational", "home_improvement", "house", "major_purchase", "medical", "moving", "other", "renewable_energy", "small_business", "vacation", "wedding" ] 
} 
],
"subtitle": {
 "text": null 
},
"id": "chart3",
"chart": {
 "renderTo": "chart3" 
} 
});
        });
    })(jQuery);
</script>

---

## Default Rate Decomposition by Loan Grade

<script type='text/javascript' src=C:/Users/Liangquan Zhou/Documents/R/win-library/3.0/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=C:/Users/Liangquan Zhou/Documents/R/win-library/3.0/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=C:/Users/Liangquan Zhou/Documents/R/win-library/3.0/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=C:/Users/Liangquan Zhou/Documents/R/win-library/3.0/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chart2' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart2",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": null 
},
"yAxis": [
 {
 "title": {
 "text": "default_rate" 
} 
} 
],
"series": [
 {
 "data": [
 [
 "2007 Q3",
           0.2 
],
[
 "2007 Q4",
         0.097 
],
[
 "2008 Q1",
         0.128 
],
[
 "2008 Q2",
         0.169 
],
[
 "2008 Q3",
         0.125 
],
[
 "2008 Q4",
         0.088 
],
[
 "2009 Q1",
         0.107 
],
[
 "2009 Q2",
         0.095 
],
[
 "2009 Q3",
         0.067 
],
[
 "2009 Q4",
         0.084 
],
[
 "2010 Q1",
         0.043 
],
[
 "2010 Q2",
         0.056 
],
[
 "2010 Q3",
         0.064 
],
[
 "2010 Q4",
         0.058 
],
[
 "2011 Q1",
         0.059 
],
[
 "2011 Q2",
         0.053 
],
[
 "2011 Q3",
         0.066 
],
[
 "2011 Q4",
         0.079 
] 
],
"name": "A",
"type": "line",
"marker": {
 "radius":              3 
} 
},
{
 "data": [
 [
 "2007 Q3",
          0.28 
],
[
 "2007 Q4",
         0.426 
],
[
 "2008 Q1",
         0.291 
],
[
 "2008 Q2",
         0.295 
],
[
 "2008 Q3",
         0.296 
],
[
 "2008 Q4",
         0.199 
],
[
 "2009 Q1",
         0.191 
],
[
 "2009 Q2",
         0.163 
],
[
 "2009 Q3",
         0.169 
],
[
 "2009 Q4",
         0.153 
],
[
 "2010 Q1",
         0.139 
],
[
 "2010 Q2",
         0.155 
],
[
 "2010 Q3",
         0.153 
],
[
 "2010 Q4",
         0.134 
],
[
 "2011 Q1",
         0.105 
],
[
 "2011 Q2",
         0.118 
],
[
 "2011 Q3",
         0.111 
],
[
 "2011 Q4",
          0.13 
] 
],
"name": "B",
"type": "line",
"marker": {
 "radius":              3 
} 
},
{
 "data": [
 [
 "2007 Q3",
         0.545 
],
[
 "2007 Q4",
         0.535 
],
[
 "2008 Q1",
         0.462 
],
[
 "2008 Q2",
         0.403 
],
[
 "2008 Q3",
         0.346 
],
[
 "2008 Q4",
         0.266 
],
[
 "2009 Q1",
          0.21 
],
[
 "2009 Q2",
         0.266 
],
[
 "2009 Q3",
         0.234 
],
[
 "2009 Q4",
         0.261 
],
[
 "2010 Q1",
         0.258 
],
[
 "2010 Q2",
         0.228 
],
[
 "2010 Q3",
         0.203 
],
[
 "2010 Q4",
         0.247 
],
[
 "2011 Q1",
         0.163 
],
[
 "2011 Q2",
         0.182 
],
[
 "2011 Q3",
         0.175 
],
[
 "2011 Q4",
         0.167 
] 
],
"name": "C",
"type": "line",
"marker": {
 "radius":              3 
} 
},
{
 "data": [
 [
 "2007 Q3",
          0.75 
],
[
 "2007 Q4",
         0.781 
],
[
 "2008 Q1",
         0.629 
],
[
 "2008 Q2",
         0.691 
],
[
 "2008 Q3",
         0.618 
],
[
 "2008 Q4",
         0.415 
],
[
 "2009 Q1",
         0.282 
],
[
 "2009 Q2",
           0.4 
],
[
 "2009 Q3",
         0.348 
],
[
 "2009 Q4",
          0.33 
],
[
 "2010 Q1",
         0.299 
],
[
 "2010 Q2",
         0.331 
],
[
 "2010 Q3",
         0.295 
],
[
 "2010 Q4",
         0.301 
],
[
 "2011 Q1",
         0.191 
],
[
 "2011 Q2",
         0.219 
],
[
 "2011 Q3",
         0.218 
],
[
 "2011 Q4",
         0.231 
] 
],
"name": "D",
"type": "line",
"marker": {
 "radius":              3 
} 
},
{
 "data": [
 [
 "2007 Q3",
         0.958 
],
[
 "2007 Q4",
         0.917 
],
[
 "2008 Q1",
         0.836 
],
[
 "2008 Q2",
          0.86 
],
[
 "2008 Q3",
         0.816 
],
[
 "2008 Q4",
         0.465 
],
[
 "2009 Q1",
         0.422 
],
[
 "2009 Q2",
         0.435 
],
[
 "2009 Q3",
         0.338 
],
[
 "2009 Q4",
         0.388 
],
[
 "2010 Q1",
         0.408 
],
[
 "2010 Q2",
         0.361 
],
[
 "2010 Q3",
         0.389 
],
[
 "2010 Q4",
         0.326 
],
[
 "2011 Q1",
         0.226 
],
[
 "2011 Q2",
         0.256 
],
[
 "2011 Q3",
         0.251 
],
[
 "2011 Q4",
         0.279 
] 
],
"name": "E",
"type": "line",
"marker": {
 "radius":              3 
} 
},
{
 "data": [
 [
 "2007 Q3",
          0.87 
],
[
 "2007 Q4",
         0.929 
],
[
 "2008 Q1",
         0.935 
],
[
 "2008 Q2",
         0.842 
],
[
 "2008 Q3",
         0.842 
],
[
 "2008 Q4",
         0.889 
],
[
 "2009 Q1",
         0.636 
],
[
 "2009 Q2",
         0.529 
],
[
 "2009 Q3",
         0.433 
],
[
 "2009 Q4",
         0.457 
],
[
 "2010 Q1",
         0.613 
],
[
 "2010 Q2",
         0.436 
],
[
 "2010 Q3",
         0.476 
],
[
 "2010 Q4",
         0.407 
],
[
 "2011 Q1",
         0.217 
],
[
 "2011 Q2",
         0.271 
],
[
 "2011 Q3",
         0.301 
],
[
 "2011 Q4",
         0.363 
] 
],
"name": "F",
"type": "line",
"marker": {
 "radius":              3 
} 
},
{
 "data": [
 [
 "2007 Q3",
             1 
],
[
 "2007 Q4",
             1 
],
[
 "2008 Q1",
         0.958 
],
[
 "2008 Q2",
             1 
],
[
 "2008 Q3",
             1 
],
[
 "2008 Q4",
             1 
],
[
 "2009 Q1",
             1 
],
[
 "2009 Q2",
         0.667 
],
[
 "2009 Q3",
         0.833 
],
[
 "2009 Q4",
         0.524 
],
[
 "2010 Q1",
          0.75 
],
[
 "2010 Q2",
         0.412 
],
[
 "2010 Q3",
         0.591 
],
[
 "2010 Q4",
         0.444 
],
[
 "2011 Q1",
         0.305 
],
[
 "2011 Q2",
         0.244 
],
[
 "2011 Q3",
         0.372 
],
[
 "2011 Q4",
         0.436 
] 
],
"name": "G",
"type": "line",
"marker": {
 "radius":              3 
} 
} 
],
"xAxis": [
 {
 "title": {
 "text": "time" 
},
"categories": [ "2007 Q3", "2007 Q4", "2008 Q1", "2008 Q2", "2008 Q3", "2008 Q4", "2009 Q1", "2009 Q2", "2009 Q3", "2009 Q4", "2010 Q1", "2010 Q2", "2010 Q3", "2010 Q4", "2011 Q1", "2011 Q2", "2011 Q3", "2011 Q4" ] 
} 
],
"subtitle": {
 "text": null 
},
"id": "chart2",
"chart": {
 "renderTo": "chart2" 
} 
});
        });
    })(jQuery);
</script>

> * Default Rates becomes lower and lower.

---

## Borrower Profiles Analysis

[D3.js](http://www.columbia.edu/~xy2231/hist_interactive.html)

--- 

## Further Work...

There still are a lot of things we can explore on lending club's loan dataset.

> * Combination of variables...
> * Historical Return on Investment Analysis
> * Loan interest rate prediction...

---

## Packages used

> * plyr - the split-apply-combine paradigm for R
> * lubridate, zoo - Dates and times
> * ggplot2 
> * rCharts - interactive charts
> * D3.js
> * slidify - slides

--- 
<br>
<br>
<br>
<br>
<br>
<br>

<center><h2>Thank You!</h2></center>

