.class public Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "ReadingCategoryListBeanV3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mData:Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;->mData:Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3;->mData:Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean;

    return-void
.end method
