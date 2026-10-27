.class abstract Lcom/xiaopeng/xui/app/a/g;
.super Ljava/lang/Object;
.source "XActivityDismissExtend.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/a/d;
.implements Lcom/xiaopeng/xui/app/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/a/g$b;,
        Lcom/xiaopeng/xui/app/a/g$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Landroid/app/Activity;)Lcom/xiaopeng/xui/app/a/g;
    .locals 1

    .line 23
    new-instance v0, Lcom/xiaopeng/xui/app/a/g$b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/a/g$b;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/xiaopeng/xui/app/a/g$a;)V
.end method
