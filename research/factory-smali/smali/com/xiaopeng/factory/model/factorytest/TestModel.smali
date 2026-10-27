.class public Lcom/xiaopeng/factory/model/factorytest/TestModel;
.super Ljava/lang/Object;
.source "TestModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TestModel"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/TestModel;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method
