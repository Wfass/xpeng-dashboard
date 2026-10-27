.class Lcom/xiaopeng/xui/app/a/i$a;
.super Lcom/xiaopeng/xui/app/a/i;
.source "XActivityTemplateExtend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field aaL:Lcom/xiaopeng/xui/app/a/g;

.field mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/a/i;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/xui/app/a/i$a;->mActivity:Landroid/app/Activity;

    .line 96
    return-void
.end method


# virtual methods
.method a(Lcom/xiaopeng/xui/app/a/f;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 108
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/a/f;->qF()V

    .line 109
    return-void
.end method

.method a(Lcom/xiaopeng/xui/app/a/g;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/xui/app/a/i$a;->aaL:Lcom/xiaopeng/xui/app/a/g;

    .line 121
    return-void
.end method

.method a(Lcom/xiaopeng/xui/app/a/j;)V
    .locals 0

    .line 103
    return-void
.end method

.method a(Lcom/xiaopeng/xui/app/a/k;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 100
    return-void
.end method
