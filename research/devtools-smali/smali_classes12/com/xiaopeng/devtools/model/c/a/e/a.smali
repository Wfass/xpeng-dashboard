.class public Lcom/xiaopeng/devtools/model/c/a/e/a;
.super Ljava/lang/Object;
.source "PsuTestModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public p(II)Z
    .locals 1

    .line 25
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/devtools/utils/g;->a(Landroid/content/Context;II)Z

    move-result p1

    return p1
.end method
