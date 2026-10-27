.class public Lcom/xiaopeng/musicradio/bean/xpbean/user/UserMobileBean$DataBean;
.super Ljava/lang/Object;
.source "UserMobileBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/user/UserMobileBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private mobile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/UserMobileBean$DataBean;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/UserMobileBean$DataBean;->mobile:Ljava/lang/String;

    return-void
.end method
