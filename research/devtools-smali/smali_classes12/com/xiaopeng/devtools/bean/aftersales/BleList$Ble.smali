.class public Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;
.super Ljava/lang/Object;
.source "BleList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/bean/aftersales/BleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ble"
.end annotation


# instance fields
.field private mPosition:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field

.field private mSlaveMac:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mac"
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/devtools/bean/aftersales/BleList;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/bean/aftersales/BleList;Ljava/lang/String;I)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;->this$0:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;->mSlaveMac:Ljava/lang/String;

    .line 61
    iput p3, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;->mPosition:I

    .line 62
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;->mPosition:I

    return v0
.end method

.method public getSlaveMac()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;->mSlaveMac:Ljava/lang/String;

    return-object v0
.end method

.method public setPosition(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;->mPosition:I

    .line 78
    return-void
.end method

.method public setSlaveMac(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;->mSlaveMac:Ljava/lang/String;

    .line 70
    return-void
.end method
