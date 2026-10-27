.class public Lcom/xiaopeng/devtools/bean/oled/OledData;
.super Ljava/lang/Object;
.source "OledData.java"


# instance fields
.field private btName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "btName"
    .end annotation
.end field

.field private cduOledDynamicMode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CDU_OELD_DynamicModeCfg"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBtName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/oled/OledData;->btName:Ljava/lang/String;

    return-object v0
.end method

.method public getCduOledDynamicMode()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/xiaopeng/devtools/bean/oled/OledData;->cduOledDynamicMode:I

    return v0
.end method

.method public setBtName(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/oled/OledData;->btName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setCduOledDynamicMode(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/xiaopeng/devtools/bean/oled/OledData;->cduOledDynamicMode:I

    .line 31
    return-void
.end method
