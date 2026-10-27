.class public final enum Lbxy;
.super Ljava/lang/Enum;
.source "VuiElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbxy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbxy;

.field public static final enum BUTTON:Lbxy;

.field public static final enum CHECKBOX:Lbxy;

.field public static final enum CUSTOM:Lbxy;

.field public static final enum EDITTEXT:Lbxy;

.field public static final enum GROUP:Lbxy;

.field public static final enum IMAGEBUTTON:Lbxy;

.field public static final enum IMAGEVIEW:Lbxy;

.field public static final enum LISTVIEW:Lbxy;

.field public static final enum PROGRESSBAR:Lbxy;

.field public static final enum RADIOBUTTON:Lbxy;

.field public static final enum RADIOGROUP:Lbxy;

.field public static final enum RATINGBAR:Lbxy;

.field public static final enum RECYCLEVIEW:Lbxy;

.field public static final enum SCROLLVIEW:Lbxy;

.field public static final enum SEARCHVIEW:Lbxy;

.field public static final enum SEEKBAR:Lbxy;

.field public static final enum STATE:Lbxy;

.field public static final enum STATEFULBUTTON:Lbxy;

.field public static final enum SWITCH:Lbxy;

.field public static final enum TABHOST:Lbxy;

.field public static final enum TEXTVIEW:Lbxy;

.field public static final enum TIMEPICKER:Lbxy;

.field public static final enum UNKNOWN:Lbxy;

.field public static final enum VIEWPAGER:Lbxy;

.field public static final enum VIRTUALLIST:Lbxy;

.field public static final enum VIRTUALLISTITEM:Lbxy;

.field public static final enum XGROUPHEADER:Lbxy;

.field public static final enum XSLIDER:Lbxy;

.field public static final enum XTABLAYOUT:Lbxy;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lbxy;

    const/4 v1, 0x0

    const-string v2, "BUTTON"

    const-string v3, "Button"

    invoke-direct {v0, v2, v1, v3}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->BUTTON:Lbxy;

    .line 8
    new-instance v0, Lbxy;

    const/4 v2, 0x1

    const-string v3, "LISTVIEW"

    const-string v4, "ListView"

    invoke-direct {v0, v3, v2, v4}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->LISTVIEW:Lbxy;

    .line 9
    new-instance v0, Lbxy;

    const/4 v3, 0x2

    const-string v4, "CHECKBOX"

    const-string v5, "CheckBox"

    invoke-direct {v0, v4, v3, v5}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->CHECKBOX:Lbxy;

    .line 10
    new-instance v0, Lbxy;

    const/4 v4, 0x3

    const-string v5, "RADIOBUTTON"

    const-string v6, "RadioButton"

    invoke-direct {v0, v5, v4, v6}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->RADIOBUTTON:Lbxy;

    .line 11
    new-instance v0, Lbxy;

    const/4 v5, 0x4

    const-string v6, "RADIOGROUP"

    const-string v7, "RadioGroup"

    invoke-direct {v0, v6, v5, v7}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->RADIOGROUP:Lbxy;

    .line 12
    new-instance v0, Lbxy;

    const/4 v6, 0x5

    const-string v7, "GROUP"

    const-string v8, "Group"

    invoke-direct {v0, v7, v6, v8}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->GROUP:Lbxy;

    .line 13
    new-instance v0, Lbxy;

    const/4 v7, 0x6

    const-string v8, "EDITTEXT"

    const-string v9, "EditText"

    invoke-direct {v0, v8, v7, v9}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->EDITTEXT:Lbxy;

    .line 14
    new-instance v0, Lbxy;

    const/4 v8, 0x7

    const-string v9, "PROGRESSBAR"

    const-string v10, "ProgressBar"

    invoke-direct {v0, v9, v8, v10}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->PROGRESSBAR:Lbxy;

    .line 15
    new-instance v0, Lbxy;

    const/16 v9, 0x8

    const-string v10, "SEEKBAR"

    const-string v11, "SeekBar"

    invoke-direct {v0, v10, v9, v11}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->SEEKBAR:Lbxy;

    .line 16
    new-instance v0, Lbxy;

    const/16 v10, 0x9

    const-string v11, "TABHOST"

    const-string v12, "TabHost"

    invoke-direct {v0, v11, v10, v12}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->TABHOST:Lbxy;

    .line 17
    new-instance v0, Lbxy;

    const/16 v11, 0xa

    const-string v12, "SEARCHVIEW"

    const-string v13, "SearchView"

    invoke-direct {v0, v12, v11, v13}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->SEARCHVIEW:Lbxy;

    .line 18
    new-instance v0, Lbxy;

    const/16 v12, 0xb

    const-string v13, "RATINGBAR"

    const-string v14, "RatingBar"

    invoke-direct {v0, v13, v12, v14}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->RATINGBAR:Lbxy;

    .line 19
    new-instance v0, Lbxy;

    const/16 v13, 0xc

    const-string v14, "SWITCH"

    const-string v15, "Switch"

    invoke-direct {v0, v14, v13, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->SWITCH:Lbxy;

    .line 20
    new-instance v0, Lbxy;

    const/16 v14, 0xd

    const-string v15, "RECYCLEVIEW"

    const-string v13, "RecycleView"

    invoke-direct {v0, v15, v14, v13}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->RECYCLEVIEW:Lbxy;

    .line 21
    new-instance v0, Lbxy;

    const/16 v13, 0xe

    const-string v15, "TEXTVIEW"

    const-string v14, "TextView"

    invoke-direct {v0, v15, v13, v14}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->TEXTVIEW:Lbxy;

    .line 22
    new-instance v0, Lbxy;

    const-string v14, "SCROLLVIEW"

    const/16 v15, 0xf

    const-string v13, "ScrollView"

    invoke-direct {v0, v14, v15, v13}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->SCROLLVIEW:Lbxy;

    .line 23
    new-instance v0, Lbxy;

    const-string v13, "IMAGEBUTTON"

    const/16 v14, 0x10

    const-string v15, "ImageButton"

    invoke-direct {v0, v13, v14, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->IMAGEBUTTON:Lbxy;

    .line 24
    new-instance v0, Lbxy;

    const-string v13, "IMAGEVIEW"

    const/16 v14, 0x11

    const-string v15, "ImageView"

    invoke-direct {v0, v13, v14, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->IMAGEVIEW:Lbxy;

    .line 25
    new-instance v0, Lbxy;

    const-string v13, "CUSTOM"

    const/16 v14, 0x12

    const-string v15, "Custom"

    invoke-direct {v0, v13, v14, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->CUSTOM:Lbxy;

    .line 26
    new-instance v0, Lbxy;

    const-string v13, "XSLIDER"

    const/16 v14, 0x13

    const-string v15, "XSlider"

    invoke-direct {v0, v13, v14, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->XSLIDER:Lbxy;

    .line 27
    new-instance v0, Lbxy;

    const-string v13, "XTABLAYOUT"

    const/16 v14, 0x14

    const-string v15, "XTabLayout"

    invoke-direct {v0, v13, v14, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->XTABLAYOUT:Lbxy;

    .line 28
    new-instance v0, Lbxy;

    const-string v13, "STATEFULBUTTON"

    const/16 v14, 0x15

    const-string v15, "StatefulButton"

    invoke-direct {v0, v13, v14, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->STATEFULBUTTON:Lbxy;

    .line 29
    new-instance v0, Lbxy;

    const-string v13, "STATE"

    const/16 v14, 0x16

    const-string v15, "State"

    invoke-direct {v0, v13, v14, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->STATE:Lbxy;

    .line 30
    new-instance v0, Lbxy;

    const-string v13, "XGROUPHEADER"

    const/16 v14, 0x17

    const-string v15, "XGroupHeader"

    invoke-direct {v0, v13, v14, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->XGROUPHEADER:Lbxy;

    .line 31
    new-instance v0, Lbxy;

    const-string v13, "VIEWPAGER"

    const/16 v14, 0x18

    const-string v15, "ViewPager"

    invoke-direct {v0, v13, v14, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->VIEWPAGER:Lbxy;

    .line 32
    new-instance v0, Lbxy;

    const-string v13, "TIMEPICKER"

    const/16 v14, 0x19

    const-string v15, "TimePicker"

    invoke-direct {v0, v13, v14, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->TIMEPICKER:Lbxy;

    .line 33
    new-instance v0, Lbxy;

    const-string v13, "VIRTUALLIST"

    const/16 v14, 0x1a

    const-string v15, "VirtualList"

    invoke-direct {v0, v13, v14, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->VIRTUALLIST:Lbxy;

    .line 34
    new-instance v0, Lbxy;

    const-string v13, "VIRTUALLISTITEM"

    const/16 v14, 0x1b

    const-string v15, "VirtualListItem"

    invoke-direct {v0, v13, v14, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->VIRTUALLISTITEM:Lbxy;

    .line 35
    new-instance v0, Lbxy;

    const-string v13, "UNKNOWN"

    const/16 v14, 0x1c

    const-string v15, "Unknown"

    invoke-direct {v0, v13, v14, v15}, Lbxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxy;->UNKNOWN:Lbxy;

    const/16 v0, 0x1d

    .line 6
    new-array v0, v0, [Lbxy;

    sget-object v13, Lbxy;->BUTTON:Lbxy;

    aput-object v13, v0, v1

    sget-object v1, Lbxy;->LISTVIEW:Lbxy;

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->CHECKBOX:Lbxy;

    aput-object v1, v0, v3

    sget-object v1, Lbxy;->RADIOBUTTON:Lbxy;

    aput-object v1, v0, v4

    sget-object v1, Lbxy;->RADIOGROUP:Lbxy;

    aput-object v1, v0, v5

    sget-object v1, Lbxy;->GROUP:Lbxy;

    aput-object v1, v0, v6

    sget-object v1, Lbxy;->EDITTEXT:Lbxy;

    aput-object v1, v0, v7

    sget-object v1, Lbxy;->PROGRESSBAR:Lbxy;

    aput-object v1, v0, v8

    sget-object v1, Lbxy;->SEEKBAR:Lbxy;

    aput-object v1, v0, v9

    sget-object v1, Lbxy;->TABHOST:Lbxy;

    aput-object v1, v0, v10

    sget-object v1, Lbxy;->SEARCHVIEW:Lbxy;

    aput-object v1, v0, v11

    sget-object v1, Lbxy;->RATINGBAR:Lbxy;

    aput-object v1, v0, v12

    sget-object v1, Lbxy;->SWITCH:Lbxy;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->RECYCLEVIEW:Lbxy;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->TEXTVIEW:Lbxy;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->SCROLLVIEW:Lbxy;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->IMAGEBUTTON:Lbxy;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->IMAGEVIEW:Lbxy;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->CUSTOM:Lbxy;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->XSLIDER:Lbxy;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->XTABLAYOUT:Lbxy;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->STATEFULBUTTON:Lbxy;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->STATE:Lbxy;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->XGROUPHEADER:Lbxy;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->VIEWPAGER:Lbxy;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->TIMEPICKER:Lbxy;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->VIRTUALLIST:Lbxy;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->VIRTUALLISTITEM:Lbxy;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lbxy;->UNKNOWN:Lbxy;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sput-object v0, Lbxy;->$VALUES:[Lbxy;

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
    iput-object p3, p0, Lbxy;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbxy;
    .locals 1

    .line 6
    const-class v0, Lbxy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbxy;

    return-object p0
.end method

.method public static values()[Lbxy;
    .locals 1

    .line 6
    sget-object v0, Lbxy;->$VALUES:[Lbxy;

    invoke-virtual {v0}, [Lbxy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbxy;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lbxy;->type:Ljava/lang/String;

    return-object v0
.end method
