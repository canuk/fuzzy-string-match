#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
#
# fallback_pure_spec.rb -  "Fall back feature into pure ruby mode."
#  
#   Copyright (c) 2013  Kiyoka Nishiyama  <kiyoka@sumibi.org>
#
#  Licensed to the Apache Software Foundation (ASF) under one or more
#  contributor license agreements.  See the NOTICE file distributed with
#  this work for additional information regarding copyright ownership.
#  The ASF licenses this file to You under the Apache License, Version 2.0
#  (the "License"); you may not use this file except in compliance with
#  the License.  You may obtain a copy of the License at
# 
#      http://www.apache.org/licenses/LICENSE-2.0
# 
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
#  


require 'inline'

describe Inline, "when c compile failed, fall back into pure " do
  it "should" do
    pending ("because JRuby always in pure mode.") if (RUBY_PLATFORM == "java")
    lambda { require 'fuzzystringmatch' }.should_not   raise_error()

    FuzzyStringMatch::JaroWinkler.create( :native ).pure?( ).should be_true
  end
end
