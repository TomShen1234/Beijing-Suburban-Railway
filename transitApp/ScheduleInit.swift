//
//  ScheduleInit.swift
//  transitApp
//
//  Created by William Du on 2018/3/11.
//  Copyright © 2018年 William Du. All rights reserved.
//

import Foundation
import UIKit
import CoreData


struct ScheduleInit {
    
    
    let s1stationArray = ["Beijing West","Beijing","Beijing East","Tongzhou"]
    let s2stationArray = ["Huangtudian","Nankou","Badaling","Yanqing","Kangzhuang","Shacheng"]
    let s5stationArray = ["Huangtudian","Changping North","Huairou North"]
    
    
    static func trainInit () {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate

        let context = appDelegate.persistentContainer.viewContext
        
        // Insert Train Stations
        
        let huangtudian_station = Train_station(context: context)
        huangtudian_station.stationName = "Huangtudian"
        
        let nankou_station = Train_station(context: context)
        nankou_station.stationName = "Nankou"
        
        let badaling_station = Train_station(context: context)
        badaling_station.stationName = "Badaling"
        
        let yanqing_station = Train_station(context: context)
        yanqing_station.stationName = "Yanqing"
        
        let kangzhuang_station = Train_station(context: context)
        kangzhuang_station.stationName = "Kangzhuang"
        
        let shacheng_station = Train_station(context: context)
        shacheng_station.stationName = "Shacheng"
        

        huangtudian_station.nextStation = nankou_station
        nankou_station.prevStation = huangtudian_station
        nankou_station.nextStation = badaling_station
        badaling_station.nextStation = yanqing_station
        yanqing_station.prevStation = badaling_station
        kangzhuang_station.nextStation = shacheng_station
        shacheng_station.prevStation = kangzhuang_station
        
    
        let line_s2 = Train_line(context: context)
        line_s2.lineName = "S2"
        line_s2.addToHasStations([huangtudian_station,nankou_station,badaling_station,yanqing_station,kangzhuang_station,shacheng_station])
        

        // Train runs adding
        // Northbound Runs
        let train_203 = Train_run(context: context)
        let train_205 = Train_run(context: context)
        let train_209 = Train_run(context: context)
        let train_211 = Train_run(context: context)
        let train_213 = Train_run(context: context)
        let train_217 = Train_run(context: context)
        let train_219 = Train_run(context: context)
        let train_221 = Train_run(context: context)
        let train_225 = Train_run(context: context)
        let train_227 = Train_run(context: context)
        let train_229 = Train_run(context: context)
        let train_287 = Train_run(context: context)
        
        // Southbound Runs
        let train_202 = Train_run(context: context)
        let train_204 = Train_run(context: context)
        let train_208 = Train_run(context: context)
        let train_210 = Train_run(context: context)
        let train_214 = Train_run(context: context)
        let train_216 = Train_run(context: context)
        let train_218 = Train_run(context: context)
        let train_222 = Train_run(context: context)
        let train_224 = Train_run(context: context)
        let train_226 = Train_run(context: context)
        let train_230 = Train_run(context: context)
        let train_288 = Train_run(context: context)
        

        // Northbound train Information Setting
        /* ---- Train 203 ---- */
        let train_203_stop_1 = Stop(context: context)
        let train_203_stop_2 = Stop(context: context)
        let train_203_stop_3 = Stop(context: context)
        let train_203_stop_4 = Stop(context: context)

        train_203_stop_1.hour = 7
        train_203_stop_1.minute = 46
        train_203_stop_1.stopsAt = huangtudian_station
    
        train_203_stop_2.hour = 8
        train_203_stop_2.minute = 10
        train_203_stop_2.stopsAt = nankou_station
        
        train_203_stop_3.hour = 8
        train_203_stop_3.minute = 52
        train_203_stop_3.stopsAt = badaling_station
        
        train_203_stop_4.hour = 9
        train_203_stop_4.minute = 14
        train_203_stop_4.stopsAt = yanqing_station
        
        
        train_203.addToHasStops(train_203_stop_1)
        train_203.addToHasStops(train_203_stop_2)
        train_203.addToHasStops(train_203_stop_3)
        train_203.addToHasStops(train_203_stop_4)
        train_203.inLine = line_s2
        train_203.trainNumber = 203
        train_203.weekdayService = true
        
        /* ---- Train 205 ---- */
        let train_205_stop_1 = Stop(context: context)
        let train_205_stop_2 = Stop(context: context)
        let train_205_stop_3 = Stop(context: context)
        let train_205_stop_4 = Stop(context: context)
        
        train_205_stop_1.hour = 9
        train_205_stop_1.minute = 9
        train_205_stop_1.stopsAt = huangtudian_station
        
        train_205_stop_2.hour = 9
        train_205_stop_2.minute = 33
        train_205_stop_2.stopsAt = nankou_station
        
        train_205_stop_3.hour = 10
        train_205_stop_3.minute = 15
        train_205_stop_3.stopsAt = badaling_station
        
        train_205_stop_4.hour = 10
        train_205_stop_4.minute = 33
        train_205_stop_4.stopsAt = yanqing_station
        
    train_205.addToHasStops([train_205_stop_1,train_205_stop_2,train_205_stop_3,train_205_stop_4])
        train_205.inLine = line_s2
        train_205.trainNumber = 205
        train_205.weekdayService = true
        
        /* ---- Train 209 ---- */
        let train_209_stop_1 = Stop(context: context)
        let train_209_stop_2 = Stop(context: context)
        let train_209_stop_3 = Stop(context: context)
        
        train_209_stop_1.hour = 11
        train_209_stop_1.minute = 32
        train_209_stop_1.stopsAt = huangtudian_station
        
        train_209_stop_2.hour = 12
        train_209_stop_2.minute = 47
        train_209_stop_2.stopsAt = badaling_station
        
        train_209_stop_3.hour = 13
        train_209_stop_3.minute = 4
        train_209_stop_3.stopsAt = yanqing_station
        
        
        train_209.addToHasStops([train_209_stop_1,train_209_stop_2,train_209_stop_3])
        train_209.inLine = line_s2
        train_209.trainNumber = 209
        train_209.weekdayService = true
        
        /* ---- Train 211 ---- */
        let train_211_stop_1 = Stop(context: context)
        let train_211_stop_2 = Stop(context: context)
        let train_211_stop_3 = Stop(context: context)
        let train_211_stop_4 = Stop(context: context)
        
        train_211_stop_1.hour = 12
        train_211_stop_1.minute = 41
        train_211_stop_1.stopsAt = huangtudian_station
        
        train_211_stop_2.hour = 13
        train_211_stop_2.minute = 5
        train_211_stop_2.stopsAt = nankou_station
    
        train_211_stop_3.hour = 13
        train_211_stop_3.minute = 53
        train_211_stop_3.stopsAt = badaling_station
        
        train_211_stop_4.hour = 14
        train_211_stop_4.minute = 11
        train_211_stop_4.stopsAt = yanqing_station
        
        train_211.addToHasStops([train_211_stop_1,train_211_stop_2,train_211_stop_3,train_211_stop_4])
        train_211.inLine = line_s2
        train_211.trainNumber = 211
        train_211.weekdayService = true
        
        /* ---- Train 213 ---- */
        let train_213_stop_1 = Stop(context: context)
        let train_213_stop_2 = Stop(context: context)
        let train_213_stop_3 = Stop(context: context)
        let train_213_stop_4 = Stop(context: context)
        
        train_213_stop_1.hour = 13
        train_213_stop_1.minute = 8
        train_213_stop_1.stopsAt = huangtudian_station
        
        train_213_stop_2.hour = 13
        train_213_stop_2.minute = 32
        train_213_stop_2.stopsAt = nankou_station

        train_213_stop_3.hour = 14
        train_213_stop_3.minute = 19
        train_213_stop_3.stopsAt = badaling_station
        
        train_213_stop_4.hour = 14
        train_213_stop_4.minute = 36
        train_213_stop_4.stopsAt = yanqing_station
        
        train_213.addToHasStops([train_213_stop_1,train_213_stop_2,train_213_stop_3,train_213_stop_4])
        train_213.inLine = line_s2
        train_213.trainNumber = 213
        train_213.weekdayService = false
        
        /* ---- Train 217 ---- */
        let train_217_stop_1 = Stop(context: context)
        let train_217_stop_2 = Stop(context: context)
        let train_217_stop_3 = Stop(context: context)
        let train_217_stop_4 = Stop(context: context)
        
        train_217_stop_1.hour = 15
        train_217_stop_1.minute = 35
        train_217_stop_1.stopsAt = huangtudian_station
        
        train_217_stop_2.hour = 16
        train_217_stop_2.minute = 8
        train_217_stop_2.stopsAt = nankou_station
        
        train_217_stop_3.hour = 16
        train_217_stop_3.minute = 52
        train_217_stop_3.stopsAt = badaling_station
        
        train_217_stop_4.hour = 17
        train_217_stop_4.minute = 9
        train_217_stop_4.stopsAt = yanqing_station
        
        train_217.addToHasStops([train_217_stop_1,train_217_stop_2,train_217_stop_3,train_217_stop_4])
        train_217.inLine = line_s2
        train_217.trainNumber = 217
        train_217.weekdayService = true
        
        /* ---- Train 219 ---- */
        let train_219_stop_1 = Stop(context: context)
        let train_219_stop_2 = Stop(context: context)
        let train_219_stop_3 = Stop(context: context)
        let train_219_stop_4 = Stop(context: context)
        
        train_219_stop_1.hour = 16
        train_219_stop_1.minute = 53
        train_219_stop_1.stopsAt = huangtudian_station
        
        train_219_stop_2.hour = 17
        train_219_stop_2.minute = 17
        train_219_stop_2.stopsAt = nankou_station
        
        train_219_stop_3.hour = 17
        train_219_stop_3.minute = 59
        train_219_stop_3.stopsAt = badaling_station
        
        train_219_stop_4.hour = 18
        train_219_stop_4.minute = 16
        train_219_stop_4.stopsAt = yanqing_station
        
        train_219.addToHasStops([train_219_stop_1,train_219_stop_2,train_219_stop_3,train_219_stop_4])
        train_219.inLine = line_s2
        train_219.trainNumber = 219
        train_219.weekdayService = true
        
        /* ---- Train 221 ---- */
        let train_221_stop_1 = Stop(context: context)
        let train_221_stop_2 = Stop(context: context)
        let train_221_stop_3 = Stop(context: context)
        let train_221_stop_4 = Stop(context: context)
        
        train_221_stop_1.hour = 17
        train_221_stop_1.minute = 20
        train_221_stop_1.stopsAt = huangtudian_station
        
        train_221_stop_2.hour = 17
        train_221_stop_2.minute = 44
        train_221_stop_2.stopsAt = nankou_station
        
        train_221_stop_3.hour = 18
        train_221_stop_3.minute = 26
        train_221_stop_3.stopsAt = badaling_station
        
        train_221_stop_4.hour = 18
        train_221_stop_4.minute = 43
        train_221_stop_4.stopsAt = yanqing_station
        train_221.addToHasStops([train_221_stop_1,train_221_stop_2,train_221_stop_3,train_221_stop_4])
        train_221.inLine = line_s2
        train_221.trainNumber = 221
        train_221.weekdayService = false
        
        /* ---- Train 225 ---- */
        let train_225_stop_1 = Stop(context: context)
        let train_225_stop_2 = Stop(context: context)
        let train_225_stop_3 = Stop(context: context)
        
        train_225_stop_1.hour = 19
        train_225_stop_1.minute = 41
        train_225_stop_1.stopsAt = huangtudian_station
        
        train_225_stop_2.hour = 20
        train_225_stop_2.minute = 5
        train_225_stop_2.stopsAt = nankou_station
        
        train_225_stop_3.hour = 21
        train_225_stop_3.minute = 0
        train_225_stop_3.stopsAt = yanqing_station
        
        train_225.addToHasStops([train_225_stop_1,train_225_stop_2,train_225_stop_3])
        train_225.inLine = line_s2
        train_225.trainNumber = 225
        train_225.weekdayService = true
        
        /* ---- Train 227 ---- */
        let train_227_stop_1 = Stop(context: context)
        let train_227_stop_2 = Stop(context: context)
        let train_227_stop_3 = Stop(context: context)
        
        train_227_stop_1.hour = 21
        train_227_stop_1.minute = 4
        train_227_stop_1.stopsAt = huangtudian_station
        
        train_227_stop_2.hour = 21
        train_227_stop_2.minute = 28
        train_227_stop_2.stopsAt = nankou_station
        
        train_227_stop_3.hour = 22
        train_227_stop_3.minute = 23
        train_227_stop_3.stopsAt = yanqing_station
        
        train_227.addToHasStops([train_227_stop_1,train_227_stop_2,train_227_stop_3])
        train_227.inLine = line_s2
        train_227.trainNumber = 227
        train_227.weekdayService = true
        
        /* ---- Train 229 ---- */
        let train_229_stop_1 = Stop(context: context)
        let train_229_stop_2 = Stop(context: context)
        let train_229_stop_3 = Stop(context: context)
        
        train_229_stop_1.hour = 21
        train_229_stop_1.minute = 49
        train_229_stop_1.stopsAt = huangtudian_station
        
        train_229_stop_2.hour = 22
        train_229_stop_2.minute = 13
        train_229_stop_2.stopsAt = nankou_station
        
        train_229_stop_3.hour = 23
        train_229_stop_3.minute = 8
        train_229_stop_3.stopsAt = yanqing_station
        
        train_229.addToHasStops([train_229_stop_1,train_229_stop_2,train_229_stop_3])
        train_229.inLine = line_s2
        train_229.trainNumber = 229
        train_229.weekdayService = false
        
        /* ---- Train 287 ---- */
        let train_287_stop_1 = Stop(context: context)
        let train_287_stop_2 = Stop(context: context)
        let train_287_stop_3 = Stop(context: context)
        let train_287_stop_4 = Stop(context: context)
        let train_287_stop_5 = Stop(context: context)
        
        train_287_stop_1.hour = 8
        train_287_stop_1.minute = 8
        train_287_stop_1.stopsAt = huangtudian_station
        
        train_287_stop_2.hour = 8
        train_287_stop_2.minute = 42
        train_287_stop_2.stopsAt = nankou_station
        
        train_287_stop_3.hour = 9
        train_287_stop_3.minute = 24
        train_287_stop_3.stopsAt = badaling_station
        
        train_287_stop_4.hour = 9
        train_287_stop_4.minute = 39
        train_287_stop_4.stopsAt = kangzhuang_station
        
        train_287_stop_5.hour = 10
        train_287_stop_5.minute = 16
        train_287_stop_5.stopsAt = shacheng_station
        
        train_287.addToHasStops([train_287_stop_1,train_287_stop_2,train_287_stop_3,train_287_stop_4,train_287_stop_5])
        train_287.inLine = line_s2
        train_287.trainNumber = 287
        train_287.weekdayService = false
        
        // Southbound train Information Setting
        /* ---- Train 202 ---- */
        let train_202_stop_1 = Stop(context: context)
        let train_202_stop_2 = Stop(context: context)
        let train_202_stop_3 = Stop(context: context)
        
        train_202_stop_1.hour = 6
        train_202_stop_1.minute = 10
        train_202_stop_1.stopsAt = yanqing_station
        
        train_202_stop_2.hour = 7
        train_202_stop_2.minute = 3
        train_202_stop_2.stopsAt = nankou_station
        
        train_202_stop_3.hour = 7
        train_202_stop_3.minute = 43
        train_202_stop_3.stopsAt = huangtudian_station
        
        
        train_202.addToHasStops(train_202_stop_1)
        train_202.addToHasStops(train_202_stop_2)
        train_202.addToHasStops(train_202_stop_3)
        train_202.inLine = line_s2
        train_202.trainNumber = 202
        train_202.weekdayService = false
        
        /* ---- Train 204 ---- */
        let train_204_stop_1 = Stop(context: context)
        let train_204_stop_2 = Stop(context: context)
        let train_204_stop_3 = Stop(context: context)
        let train_204_stop_4 = Stop(context: context)
        
        train_204_stop_1.hour = 7
        train_204_stop_1.minute = 11
        train_204_stop_1.stopsAt = yanqing_station
        
        train_204_stop_2.hour = 7
        train_204_stop_2.minute = 24
        train_204_stop_2.stopsAt = badaling_station
        
        train_204_stop_3.hour = 8
        train_204_stop_3.minute = 9
        train_204_stop_3.stopsAt = nankou_station
        
        train_204_stop_4.hour = 8
        train_204_stop_4.minute = 40
        train_204_stop_4.stopsAt = huangtudian_station
        
        train_204.addToHasStops([train_204_stop_1,train_204_stop_2,train_204_stop_3,train_204_stop_4])
        train_204.inLine = line_s2
        train_204.trainNumber = 204
        train_204.weekdayService = true
        
        /* ---- Train 208 ---- */
        let train_208_stop_1 = Stop(context: context)
        let train_208_stop_2 = Stop(context: context)
        let train_208_stop_3 = Stop(context: context)
        let train_208_stop_4 = Stop(context: context)
        
        train_208_stop_1.hour = 9
        train_208_stop_1.minute = 39
        train_208_stop_1.stopsAt = yanqing_station
        
        train_208_stop_2.hour = 9
        train_208_stop_2.minute = 52
        train_208_stop_2.stopsAt = badaling_station
        
        train_208_stop_3.hour = 10
        train_208_stop_3.minute = 37
        train_208_stop_3.stopsAt = nankou_station
        
        train_208_stop_4.hour = 11
        train_208_stop_4.minute = 11
        train_208_stop_4.stopsAt = huangtudian_station
        
        
        train_208.addToHasStops([train_208_stop_1,train_208_stop_2,train_208_stop_3,train_208_stop_4])
        train_208.inLine = line_s2
        train_208.trainNumber = 208
        train_208.weekdayService = true
        
        /* ---- Train 210 ---- */
        let train_210_stop_1 = Stop(context: context)
        let train_210_stop_2 = Stop(context: context)
        let train_210_stop_3 = Stop(context: context)
        let train_210_stop_4 = Stop(context: context)
        
        train_210_stop_1.hour = 10
        train_210_stop_1.minute = 48
        train_210_stop_1.stopsAt = yanqing_station
        
        train_210_stop_2.hour = 11
        train_210_stop_2.minute = 1
        train_210_stop_2.stopsAt = badaling_station
        
        train_210_stop_3.hour = 11
        train_210_stop_3.minute = 46
        train_210_stop_3.stopsAt = nankou_station
        
        train_210_stop_4.hour = 12
        train_210_stop_4.minute = 17
        train_210_stop_4.stopsAt = huangtudian_station
        
        train_210.addToHasStops([train_210_stop_1,train_210_stop_2,train_210_stop_3,train_210_stop_4])
        train_210.inLine = line_s2
        train_210.trainNumber = 210
        train_210.weekdayService = true
        
        /* ---- Train 214 ---- */
        let train_214_stop_1 = Stop(context: context)
        let train_214_stop_2 = Stop(context: context)
        let train_214_stop_3 = Stop(context: context)
        let train_214_stop_4 = Stop(context: context)
        
        train_214_stop_1.hour = 13
        train_214_stop_1.minute = 19
        train_214_stop_1.stopsAt = yanqing_station
        
        train_214_stop_2.hour = 13
        train_214_stop_2.minute = 32
        train_214_stop_2.stopsAt = badaling_station
        
        train_214_stop_3.hour = 14
        train_214_stop_3.minute = 17
        train_214_stop_3.stopsAt = nankou_station
        
        train_214_stop_4.hour = 15
        train_214_stop_4.minute = 3
        train_214_stop_4.stopsAt = huangtudian_station
        
        train_214.addToHasStops([train_214_stop_1,train_214_stop_2,train_214_stop_3,train_214_stop_4])
        train_214.inLine = line_s2
        train_214.trainNumber = 214
        train_214.weekdayService = true
        
        /* ---- Train 216 ---- */
        let train_216_stop_1 = Stop(context: context)
        let train_216_stop_2 = Stop(context: context)
        let train_216_stop_3 = Stop(context: context)
        let train_216_stop_4 = Stop(context: context)
        
        train_216_stop_1.hour = 14
        train_216_stop_1.minute = 38
        train_216_stop_1.stopsAt = yanqing_station
        
        train_216_stop_2.hour = 14
        train_216_stop_2.minute = 51
        train_216_stop_2.stopsAt = badaling_station
        
        train_216_stop_3.hour = 15
        train_216_stop_3.minute = 36
        train_216_stop_3.stopsAt = nankou_station
        
        train_216_stop_4.hour = 16
        train_216_stop_4.minute = 7
        train_216_stop_4.stopsAt = huangtudian_station
        
        train_216.addToHasStops([train_216_stop_1,train_216_stop_2,train_216_stop_3,train_216_stop_4])
        train_216.inLine = line_s2
        train_216.trainNumber = 216
        train_216.weekdayService = true
        
        /* ---- Train 218 ---- */
        let train_218_stop_1 = Stop(context: context)
        let train_218_stop_2 = Stop(context: context)
        let train_218_stop_3 = Stop(context: context)
        let train_218_stop_4 = Stop(context: context)
        
        train_218_stop_1.hour = 15
        train_218_stop_1.minute = 9
        train_218_stop_1.stopsAt = yanqing_station
        
        train_218_stop_2.hour = 15
        train_218_stop_2.minute = 22
        train_218_stop_2.stopsAt = badaling_station
        
        train_218_stop_3.hour = 16
        train_218_stop_3.minute = 7
        train_218_stop_3.stopsAt = nankou_station
        
        train_218_stop_4.hour = 16
        train_218_stop_4.minute = 38
        train_218_stop_4.stopsAt = huangtudian_station
        
        train_218.addToHasStops([train_218_stop_1,train_218_stop_2,train_218_stop_3,train_218_stop_4])
        train_218.inLine = line_s2
        train_218.trainNumber = 218
        train_218.weekdayService = false
        
        /* ---- Train 222 ---- */
        let train_222_stop_1 = Stop(context: context)
        let train_222_stop_2 = Stop(context: context)
        let train_222_stop_3 = Stop(context: context)
        let train_222_stop_4 = Stop(context: context)
        
        train_222_stop_1.hour = 17
        train_222_stop_1.minute = 24
        train_222_stop_1.stopsAt = yanqing_station
        
        train_222_stop_2.hour = 17
        train_222_stop_2.minute = 37
        train_222_stop_2.stopsAt = badaling_station
        
        train_222_stop_3.hour = 18
        train_222_stop_3.minute = 21
        train_222_stop_3.stopsAt = nankou_station
        
        train_222_stop_4.hour = 19
        train_222_stop_4.minute = 1
        train_222_stop_4.stopsAt = huangtudian_station
        train_222.addToHasStops([train_222_stop_1,train_222_stop_2,train_222_stop_3,train_222_stop_4])
        train_222.inLine = line_s2
        train_222.trainNumber = 222
        train_222.weekdayService = true
        
        /* ---- Train 224 ---- */
        let train_224_stop_1 = Stop(context: context)
        let train_224_stop_2 = Stop(context: context)
        let train_224_stop_3 = Stop(context: context)
        let train_224_stop_4 = Stop(context: context)
        
        train_224_stop_1.hour = 18
        train_224_stop_1.minute = 46
        train_224_stop_1.stopsAt = yanqing_station
        
        train_224_stop_2.hour = 18
        train_224_stop_2.minute = 59
        train_224_stop_2.stopsAt = badaling_station
        
        train_224_stop_3.hour = 19
        train_224_stop_3.minute = 43
        train_224_stop_3.stopsAt = nankou_station
        
        train_224_stop_4.hour = 20
        train_224_stop_4.minute = 26
        train_224_stop_4.stopsAt = huangtudian_station
        
        train_224.addToHasStops([train_224_stop_1,train_224_stop_2,train_224_stop_3,train_224_stop_4])
        train_224.inLine = line_s2
        train_224.trainNumber = 224
        train_224.weekdayService = true
        
        /* ---- Train 226 ---- */
        let train_226_stop_1 = Stop(context: context)
        let train_226_stop_2 = Stop(context: context)
        let train_226_stop_3 = Stop(context: context)
        let train_226_stop_4 = Stop(context: context)
        
        train_226_stop_1.hour = 19
        train_226_stop_1.minute = 18
        train_226_stop_1.stopsAt = yanqing_station
        
        train_226_stop_2.hour = 19
        train_226_stop_2.minute = 31
        train_226_stop_2.stopsAt = badaling_station
        
        train_226_stop_3.hour = 20
        train_226_stop_3.minute = 21
        train_226_stop_3.stopsAt = nankou_station
        
        train_226_stop_4.hour = 21
        train_226_stop_4.minute = 1
        train_226_stop_4.stopsAt = huangtudian_station
        
        train_226.addToHasStops([train_226_stop_1,train_226_stop_2,train_226_stop_3,train_226_stop_4])
        train_226.inLine = line_s2
        train_226.trainNumber = 226
        train_226.weekdayService = false
        
        /* ---- Train 230 ---- */
        let train_230_stop_1 = Stop(context: context)
        let train_230_stop_2 = Stop(context: context)
        let train_230_stop_3 = Stop(context: context)
        
        train_230_stop_1.hour = 21
        train_230_stop_1.minute = 19
        train_230_stop_1.stopsAt = yanqing_station
        
        train_230_stop_2.hour = 22
        train_230_stop_2.minute = 12
        train_230_stop_2.stopsAt = nankou_station
        
        train_230_stop_3.hour = 22
        train_230_stop_3.minute = 43
        train_230_stop_3.stopsAt = huangtudian_station
        
        train_230.addToHasStops([train_230_stop_1,train_230_stop_2,train_230_stop_3])
        train_230.inLine = line_s2
        train_230.trainNumber = 230
        train_230.weekdayService = true
        
        /* ---- Train 288 ---- */
        let train_288_stop_1 = Stop(context: context)
        let train_288_stop_2 = Stop(context: context)
        let train_288_stop_3 = Stop(context: context)
        let train_288_stop_4 = Stop(context: context)
        let train_288_stop_5 = Stop(context: context)
        
        train_288_stop_1.hour = 10
        train_288_stop_1.minute = 31
        train_288_stop_1.stopsAt = shacheng_station
        
        train_288_stop_2.hour = 11
        train_288_stop_2.minute = 4
        train_288_stop_2.stopsAt = kangzhuang_station
        
        train_288_stop_3.hour = 11
        train_288_stop_3.minute = 19
        train_288_stop_3.stopsAt = badaling_station
        
        train_288_stop_4.hour = 12
        train_288_stop_4.minute = 4
        train_288_stop_4.stopsAt = nankou_station
        
        train_288_stop_5.hour = 12
        train_288_stop_5.minute = 34
        train_288_stop_5.stopsAt = huangtudian_station
        
        train_288.addToHasStops([train_288_stop_1,train_288_stop_2,train_288_stop_3,train_288_stop_4,train_288_stop_5])
        train_288.inLine = line_s2
        train_288.trainNumber = 288
        train_288.weekdayService = false
        
        
        do{
            try context.save()
            print("Saved All Train Data Successfully")
        }catch{
            print("error")
        }
        
    }
    
    static func saveNewStation(station:String,inLine:Int){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let stationToSafe = Train_station(context: context)
        stationToSafe.stationName = station
        do{
            try context.save()
        }catch{
            print("Error occured when saving\(station)")
        }
    }
    
    
    static func trainFetch(){
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let context = delegate.persistentContainer.viewContext
        
        let fetch = NSFetchRequest<Train_run>(entityName: "Train_run")
        fetch.returnsObjectsAsFaults = false
            let result = try!
                context.fetch(fetch)
        for d in result {
            let newTempStops = d.hasStops as! Set<Stop>
            for s in newTempStops{
                print("The train stops at \(s.stopsAt!.stationName!) station at \(s.hour):\(s.minute)")
            }
        }
    }
    
    static func trainDirection(train:Train_run) -> String{
        var returnValue = "_"
        switch train.trainNumber {
        case 203,205,209,211,213,217,219,221,225,227,229,287:
            returnValue = "North"
        case 202,204,208,210,214,216,218,222,224,226,230,288:
            returnValue = "South"
        default:
            break
        }
        return returnValue
    }
    
    static func allTrainBeforeTime(hour:Int,minute:Int,onLine:String,weekDay:Bool,atStation:String,direction:String,headTo:String) -> [Train_run]{
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let context = delegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<Train_run>(entityName: "Train_run")
        var result:[Train_run]
        var filteredResult = [Train_run]()
        var finalResult = [Train_run]()
        
        fetchRequest.returnsObjectsAsFaults = false
        
        do{
            result = try context.fetch(fetchRequest)
            for eachTrain in result{
                if trainDirection(train: eachTrain) == direction{
                    if eachTrain.inLine?.lineName == onLine{
                        switch weekDay{
                        case true:
                            if eachTrain.weekdayService == true{
                                let stopSet = eachTrain.hasStops!
                                for eachStop in stopSet{
                                    let stop = eachStop as! Stop
                                    if stop.stopsAt!.stationName! == atStation{
                                        if stop.hour < hour{
                                            filteredResult.append(eachTrain)
                                        }else{
                                            if stop.hour == hour && stop.minute < minute{
                                                
                                                filteredResult.append(eachTrain)
                                            }
                                        }
                                    }
                                }
                            }
                        case false:
                            let stopSet = eachTrain.hasStops!
                            for eachStop in stopSet{
                                let stop = eachStop as! Stop
                                if stop.stopsAt!.stationName! == atStation{
                                    if stop.hour < hour{
                                        filteredResult.append(eachTrain)
                                    }else{
                                        if stop.hour == hour && stop.minute < minute{
                                            filteredResult.append(eachTrain)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch {
            print("Failed to fetch train data for 'AllTrainBeforeTime' function")
        }
        
        filteredResult = filteredResult.sorted(by:{$0.trainNumber < $1.trainNumber})
        for each in filteredResult{
            let stopList = each.hasStops!.allObjects as! [Stop]
            for eachStop in stopList{
                if eachStop.stopsAt!.stationName! == headTo{
                    finalResult.append(each)
                }
            }
        }
        
        return finalResult
    }
    
    static func allTrainAfterTime(hour:Int,minute:Int,onLine:String,weekDay:Bool,atStation:String,direction:String,headTo:String) -> [Train_run]{
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let context = delegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<Train_run>(entityName: "Train_run")
        var result:[Train_run]
        var filteredResult = [Train_run]()
        var finalResult = [Train_run]()
        
        fetchRequest.returnsObjectsAsFaults = false
        
        do{
            result = try context.fetch(fetchRequest)
            for eachTrain in result{
                if trainDirection(train: eachTrain) == direction{
                    if eachTrain.inLine?.lineName == onLine{
                        switch weekDay{
                        case true:
                            if eachTrain.weekdayService == true{
                                let stopSet = eachTrain.hasStops!
                                for eachStop in stopSet{
                                    let stop = eachStop as! Stop
                                    if stop.stopsAt!.stationName! == atStation{
                                        if stop.hour > hour{
                                            filteredResult.append(eachTrain)
                                        }else{
                                            if stop.hour == hour && stop.minute >= minute{

                                                filteredResult.append(eachTrain)
                                            }
                                        }
                                    }
                                }
                            }
                        case false:
                            let stopSet = eachTrain.hasStops!
                            for eachStop in stopSet{
                                let stop = eachStop as! Stop
                                if stop.stopsAt!.stationName! == atStation{
                                    if stop.hour > hour{
                                        filteredResult.append(eachTrain)
                                    }else{
                                        if stop.hour == hour && stop.minute >= minute{
                                            filteredResult.append(eachTrain)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch {
            print("Failed to fetch train data for 'AllTrainBeforeTime' function")
        }
        
        filteredResult = filteredResult.sorted(by:{stopTimeOf(station: atStation, trainRun: $0) <= stopTimeOf(station: atStation, trainRun: $1)})
        for each in filteredResult{
            let stopList = each.hasStops!.allObjects as! [Stop]
            for eachStop in stopList{
                if eachStop.stopsAt!.stationName! == headTo{
                    finalResult.append(each)
                }
            }
        }

        return finalResult
    }
    
    static func trainInfoWithNumber(trainNumber:Int,from:String,to:String) -> [Stop]{
        var returnSet = [Stop]()
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let context = delegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<Train_run>(entityName: "Train_run")
        var results:[Train_run]
        
        do {
            results = try context.fetch(fetchRequest)
            for eachTrain in results{
                if eachTrain.trainNumber == trainNumber{
                    let stopSet = eachTrain.hasStops!.allObjects as! [Stop]
                    let sortedStopSet = stopSet.sorted(by: {($0.hour * 60 + $0.minute) < ($1.hour * 60 + $1.minute)})
                    returnSet = sortedStopSet
                }
            }
            
        } catch {
            print("Error encountered when fetching train info with train number")
        }
        return returnSet
    }
    
    static func stopTimeOf(station:String,trainRun:Train_run) -> Int{
        let stopsForRun = trainRun.hasStops?.allObjects as! [Stop]
        var time = 0
        for eachStop in stopsForRun{
            if eachStop.stopsAt!.stationName! == station{
                time = Int(eachStop.hour * 60 + eachStop.minute)
            }
        }
        return time
    }
    
    static func calculatePrice(from:String,to:String) -> String{
        var returnString = ""
        var price = 0
        let assosciationTable = [("Huangtudian",0),("Nankou",30),("Badaling",51),("Yanqing",64),("Kangzhuang",60),("Shacheng",60)]
        var startNumber = 1001
        var endNumber = 1001
        for each in assosciationTable{
            if each.0 == from{
                startNumber = each.1
            }
            if each.0 == to{
                endNumber = each.1
            }
        }
        
        if startNumber != 1001 && endNumber != 1001{
            let difference = abs(endNumber - startNumber)
            switch difference{
            case 0:
                price = 0
            case 1...6:
                price = 3
            case 6...12:
                price = 4
            case 12...22:
                price = 5
            case 22...32:
                price = 6
            case 32...:
                price = Int(((difference - 32) / 20)) + 7
            default:
                break
            }
        }
        
        if to == "Shacheng" && from != "Shacheng"{
            price += 10
        }
        
        if to != "Shacheng" && from == "Shacheng"{
            price += 10
        }
        
        returnString = "¥\(price)"
        
        return returnString
    }
}
