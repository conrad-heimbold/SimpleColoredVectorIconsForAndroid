#!/bin/bash

cd $1
WORKING_DIR=$(pwd)
LIST_OF_SQUARE_ICONS=; 
LIST_OF_CIRCLE_ICONS=; 
LIST_OF_RECT_V_ICONS=; 
LIST_OF_RECT_H_ICONS=; 
STYLESHEET="11-stylesheet_for_svg.css"

for FILE in ${WORKING_DIR}/*.svg
do
  ICON_NAME=; 
  ICON_NAME=$(basename $FILE)
  # search for square icons
    mkdir -p ${WORKING_DIR}/SQUARE
    ln -f ${WORKING_DIR}/$STYLESHEET ${WORKING_DIR}/SQUARE/$STYLESHEET
    SEARCH_OUTPUT_SQUARE=; 
    SEARCH_OUTPUT_SQUARE=$(cat $FILE | grep rect | grep height=\"38\" | grep width=\"38\" | grep x=\"5\" | grep y=\"5\" )
    if [ ! -z "$SEARCH_OUTPUT_SQUARE" ]
    then
    #LIST_OF_SQUARE_ICONS=$(printf "$LIST_OF_SQUARE_ICONS \n  $ICON_NAME")
    ln -f ${WORKING_DIR}/${ICON_NAME} ${WORKING_DIR}/SQUARE/${ICON_NAME}; 
    fi 
  # search for circle icons
    mkdir -p ${WORKING_DIR}/CIRCLE
    ln -f ${WORKING_DIR}/$STYLESHEET ${WORKING_DIR}/CIRCLE/$STYLESHEET
    SEARCH_OUTPUT_CIRCLE=; 
    SEARCH_OUTPUT_CIRCLE=$(cat $FILE | grep circle | grep cx=\"24\" | grep cy=\"24\" | grep r=\"22\" )
    if [ ! -z "$SEARCH_OUTPUT_CIRCLE" ]
    then
    #LIST_OF_CIRCLE_ICONS=$(printf "$LIST_OF_CIRCLE_ICONS \n  $ICON_NAME")
    ln -f ${WORKING_DIR}/${ICON_NAME} ${WORKING_DIR}/CIRCLE/${ICON_NAME}; 
    fi
  # search for rect-h icons
    mkdir -p ${WORKING_DIR}/RECT-H
    ln -f ${WORKING_DIR}/$STYLESHEET ${WORKING_DIR}/RECT-H/$STYLESHEET
    SEARCH_OUTPUT_RECT_H=; 
    SEARCH_OUTPUT_RECT_H=$(cat $FILE | grep rect | grep width=\"44\" | grep height=\"32\" | grep x=\"2\" | grep y=\"8\" )
    if [ ! -z "$SEARCH_OUTPUT_RECT_H" ]
    then
    #LIST_OF_RECT_H_ICONS=$(printf "$LIST_OF_RECT_H_ICONS \n  $ICON_NAME")
    ln -f ${WORKING_DIR}/${ICON_NAME} ${WORKING_DIR}/RECT-H/${ICON_NAME}; 
    fi
  # search for rect-v icons
    mkdir -p ${WORKING_DIR}/RECT-V
    ln -f ${WORKING_DIR}/$STYLESHEET ${WORKING_DIR}/RECT-V/$STYLESHEET
    SEARCH_OUTPUT_RECT_V=; 
    SEARCH_OUTPUT_RECT_V=$(cat $FILE | grep rect | grep height=\"44\" | grep width=\"32\" | grep x=\"8\" | grep y=\"2\" )
    if [ ! -z "$SEARCH_OUTPUT_RECT_V" ]
    then
    #LIST_OF_RECT_V_ICONS=$(printf "$LIST_OF_RECT_V_ICONS \n  $ICON_NAME")
    ln -f ${WORKING_DIR}/${ICON_NAME} ${WORKING_DIR}/RECT-V/${ICON_NAME}; 
    fi
done

#echo "SQUARE icons:" 
#echo $LIST_OF_SQUARE_ICONS
#echo "CIRCLE icons:"
#echo $LIST_OF_CIRCLE_ICONS
#echo "RECT-H icons:"
#echo $LIST_OF_RECT_H_ICONS
#echo "RECT-V icons:"
#echo $LIST_OF_RECT_V_ICONS

#export LIST_OF_SQUARE_ICONS=$LIST_OF_SQUARE_ICONS
#export LIST_OF_CIRCLE_ICONS=$LIST_OF_CIRCLE_ICONS
#export LIST_OF_RECT_H_ICONS=$LIST_OF_RECT_H_ICONS
#export LIST_OF_RECT_V_ICONS=$LIST_OF_RECT_V_ICONS
