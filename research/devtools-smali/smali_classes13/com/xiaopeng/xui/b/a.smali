.class abstract Lcom/xiaopeng/xui/b/a;
.super Ljava/lang/Object;
.source "AbsSoundEffect.java"

# interfaces
.implements Lcom/xiaopeng/xui/b/e;


# instance fields
.field abc:Lcom/xiaopeng/xui/b/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/b/d;)V
    .locals 0
    .param p1    # Lcom/xiaopeng/xui/b/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/xui/b/a;->abc:Lcom/xiaopeng/xui/b/d;

    .line 15
    return-void
.end method
