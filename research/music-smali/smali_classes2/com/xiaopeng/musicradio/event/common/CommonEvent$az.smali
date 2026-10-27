.class public Lcom/xiaopeng/musicradio/event/common/CommonEvent$az;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "az"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/UserBuyUrl;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/UserBuyUrl;)V
    .locals 0

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput-object p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$az;->a:Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaopeng/musicradio/bean/UserBuyUrl;
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$az;->a:Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

    return-object v0
.end method
