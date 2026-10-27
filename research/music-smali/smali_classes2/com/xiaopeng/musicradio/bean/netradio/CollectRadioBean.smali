.class public Lcom/xiaopeng/musicradio/bean/netradio/CollectRadioBean;
.super Ljava/lang/Object;
.source "CollectRadioBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private radioId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radioId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/CollectRadioBean;->radioId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRadioId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/CollectRadioBean;->radioId:Ljava/lang/String;

    return-object v0
.end method

.method public setRadioId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/CollectRadioBean;->radioId:Ljava/lang/String;

    return-void
.end method
