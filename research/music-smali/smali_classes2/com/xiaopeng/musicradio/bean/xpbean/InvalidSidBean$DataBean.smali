.class public Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean$DataBean;
.super Ljava/lang/Object;
.source "InvalidSidBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private sid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSid()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean$DataBean;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/InvalidSidBean$DataBean;->sid:Ljava/lang/String;

    return-void
.end method
