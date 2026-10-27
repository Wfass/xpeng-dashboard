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
    .locals 32

    .line 7
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v1, "BUTTON"

    const/4 v2, 0x0

    const-string v3, "Button"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->BUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 8
    new-instance v1, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v3, "LISTVIEW"

    const/4 v4, 0x1

    const-string v5, "ListView"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->LISTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 9
    new-instance v3, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v5, "CHECKBOX"

    const/4 v6, 0x2

    const-string v7, "CheckBox"

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->CHECKBOX:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 10
    new-instance v5, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v7, "RADIOBUTTON"

    const/4 v8, 0x3

    const-string v9, "RadioButton"

    invoke-direct {v5, v7, v8, v9}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 11
    new-instance v7, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v9, "RADIOGROUP"

    const/4 v10, 0x4

    const-string v11, "RadioGroup"

    invoke-direct {v7, v9, v10, v11}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOGROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 12
    new-instance v9, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v11, "GROUP"

    const/4 v12, 0x5

    const-string v13, "Group"

    invoke-direct {v9, v11, v12, v13}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/xiaopeng/vui/commons/VuiElementType;->GROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 13
    new-instance v11, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v13, "EDITTEXT"

    const/4 v14, 0x6

    const-string v15, "EditText"

    invoke-direct {v11, v13, v14, v15}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/xiaopeng/vui/commons/VuiElementType;->EDITTEXT:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 14
    new-instance v13, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "PROGRESSBAR"

    const/4 v14, 0x7

    const-string v12, "ProgressBar"

    invoke-direct {v13, v15, v14, v12}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/xiaopeng/vui/commons/VuiElementType;->PROGRESSBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 15
    new-instance v12, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "SEEKBAR"

    const/16 v14, 0x8

    const-string v10, "SeekBar"

    invoke-direct {v12, v15, v14, v10}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/xiaopeng/vui/commons/VuiElementType;->SEEKBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 16
    new-instance v10, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "TABHOST"

    const/16 v14, 0x9

    const-string v8, "TabHost"

    invoke-direct {v10, v15, v14, v8}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/xiaopeng/vui/commons/VuiElementType;->TABHOST:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 17
    new-instance v8, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "SEARCHVIEW"

    const/16 v14, 0xa

    const-string v6, "SearchView"

    invoke-direct {v8, v15, v14, v6}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/xiaopeng/vui/commons/VuiElementType;->SEARCHVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 18
    new-instance v6, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "RATINGBAR"

    const/16 v14, 0xb

    const-string v4, "RatingBar"

    invoke-direct {v6, v15, v14, v4}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/xiaopeng/vui/commons/VuiElementType;->RATINGBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 19
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "SWITCH"

    const/16 v14, 0xc

    const-string v2, "Switch"

    invoke-direct {v4, v15, v14, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->SWITCH:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 20
    new-instance v2, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "RECYCLEVIEW"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "RecycleView"

    invoke-direct {v2, v15, v14, v4}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 21
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "TEXTVIEW"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "TextView"

    invoke-direct {v4, v15, v14, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->TEXTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 22
    new-instance v2, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "SCROLLVIEW"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "ScrollView"

    invoke-direct {v2, v15, v14, v4}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 23
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "IMAGEBUTTON"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "ImageButton"

    invoke-direct {v4, v15, v14, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 24
    new-instance v2, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "IMAGEVIEW"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "ImageView"

    invoke-direct {v2, v15, v14, v4}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 25
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "CUSTOM"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "Custom"

    invoke-direct {v4, v15, v14, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->CUSTOM:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 26
    new-instance v2, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "XSLIDER"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "XSlider"

    invoke-direct {v2, v15, v14, v4}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 27
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "XTABLAYOUT"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "XTabLayout"

    invoke-direct {v4, v15, v14, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 28
    new-instance v2, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "STATEFULBUTTON"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "StatefulButton"

    invoke-direct {v2, v15, v14, v4}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 29
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v15, "STATE"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "State"

    invoke-direct {v4, v15, v14, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->STATE:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 30
    new-instance v2, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v14, "XGROUPHEADER"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string v4, "XGroupHeader"

    invoke-direct {v2, v14, v15, v4}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->XGROUPHEADER:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 31
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v14, "VIEWPAGER"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const-string v2, "ViewPager"

    invoke-direct {v4, v14, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->VIEWPAGER:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 32
    new-instance v2, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v14, "TIMEPICKER"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const-string v4, "TimePicker"

    invoke-direct {v2, v14, v15, v4}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->TIMEPICKER:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 33
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v14, "VIRTUALLIST"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const-string v2, "VirtualList"

    invoke-direct {v4, v14, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLIST:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 34
    new-instance v2, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v14, "VIRTUALLISTITEM"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const-string v4, "VirtualListItem"

    invoke-direct {v2, v14, v15, v4}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLISTITEM:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 35
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiElementType;

    const-string v14, "UNKNOWN"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const-string v2, "Unknown"

    invoke-direct {v4, v14, v15, v2}, Lcom/xiaopeng/vui/commons/VuiElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    const/16 v2, 0x1d

    new-array v2, v2, [Lcom/xiaopeng/vui/commons/VuiElementType;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v4, v2, v0

    .line 6
    sput-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 1

    .line 6
    const-class v0, Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0
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
