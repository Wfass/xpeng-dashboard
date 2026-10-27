.class public final enum Lcom/xiaopeng/vui/commons/VuiElementType;
.super Ljava/lang/Enum;
.source "VuiElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/vui/commons/VuiElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum BUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum CHECKBOX:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum CUSTOM:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum EDITTEXT:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum GROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum IMAGEBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum IMAGEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum LISTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum PROGRESSBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum RADIOBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum RADIOGROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum RATINGBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum SEARCHVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum SEEKBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum STATE:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum SWITCH:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum TABHOST:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum TEXTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum TIMEPICKER:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum VIEWPAGER:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum VIRTUALLIST:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum VIRTUALLISTITEM:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum XGROUPHEADER:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

.field public static final enum XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 7
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "BUTTON"

    const-string v2, "Button"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->BUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 8
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "LISTVIEW"

    const-string v2, "ListView"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->LISTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 9
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "CHECKBOX"

    const-string v2, "CheckBox"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->CHECKBOX:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 10
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "RADIOBUTTON"

    const-string v2, "RadioButton"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 11
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "RADIOGROUP"

    const-string v2, "RadioGroup"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOGROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 12
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "GROUP"

    const-string v2, "Group"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->GROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 13
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "EDITTEXT"

    const-string v2, "EditText"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->EDITTEXT:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 14
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "PROGRESSBAR"

    const-string v2, "ProgressBar"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->PROGRESSBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 15
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "SEEKBAR"

    const-string v2, "SeekBar"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->SEEKBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 16
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "TABHOST"

    const-string v2, "TabHost"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->TABHOST:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 17
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "SEARCHVIEW"

    const-string v2, "SearchView"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->SEARCHVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 18
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "RATINGBAR"

    const-string v2, "RatingBar"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RATINGBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 19
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "SWITCH"

    const-string v2, "Switch"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->SWITCH:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 20
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "RECYCLEVIEW"

    const-string v2, "RecycleView"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 21
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "TEXTVIEW"

    const-string v2, "TextView"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->TEXTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 22
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "SCROLLVIEW"

    const-string v2, "ScrollView"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 23
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "IMAGEBUTTON"

    const-string v2, "ImageButton"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 24
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "IMAGEVIEW"

    const-string v2, "ImageView"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 25
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "CUSTOM"

    const-string v2, "Custom"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->CUSTOM:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 26
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "XSLIDER"

    const-string v2, "XSlider"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 27
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "XTABLAYOUT"

    const-string v2, "XTabLayout"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 28
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "STATEFULBUTTON"

    const-string v2, "StatefulButton"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 29
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "STATE"

    const-string v2, "State"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->STATE:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 30
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "XGROUPHEADER"

    const-string v2, "XGroupHeader"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->XGROUPHEADER:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 31
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "VIEWPAGER"

    const-string v2, "ViewPager"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->VIEWPAGER:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 32
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "TIMEPICKER"

    const-string v2, "TimePicker"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->TIMEPICKER:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 33
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "VIRTUALLIST"

    const-string v2, "VirtualList"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLIST:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 34
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "VIRTUALLISTITEM"

    const-string v2, "VirtualListItem"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLISTITEM:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 35
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "UNKNOWN"

    const-string v2, "Unknown"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 6
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/xiaopeng/vui/commons/VuiElementType;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->BUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->LISTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->CHECKBOX:Lcom/xiaopeng/vui/commons/VuiElementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOGROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->GROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->EDITTEXT:Lcom/xiaopeng/vui/commons/VuiElementType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->PROGRESSBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->SEEKBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->TABHOST:Lcom/xiaopeng/vui/commons/VuiElementType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->SEARCHVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->RATINGBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->SWITCH:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->TEXTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->CUSTOM:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->STATE:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->XGROUPHEADER:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->VIEWPAGER:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->TIMEPICKER:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLIST:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLISTITEM:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/xiaopeng/vui/commons/VuiElementType;->type:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, [Lcom/xiaopeng/vui/commons/VuiElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/VuiElementType;->type:Ljava/lang/String;

    return-object v0
.end method
