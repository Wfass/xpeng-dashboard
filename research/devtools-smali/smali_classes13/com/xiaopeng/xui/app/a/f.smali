.class abstract Lcom/xiaopeng/xui/app/a/f;
.super Ljava/lang/Object;
.source "XActivityDismissCauseGroup.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/a/e$a;
.implements Lcom/xiaopeng/xui/app/a/e$e;
.implements Lcom/xiaopeng/xui/app/a/e$g;
.implements Lcom/xiaopeng/xui/app/a/e$i;
.implements Lcom/xiaopeng/xui/app/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/a/f$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static e(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)Lcom/xiaopeng/xui/app/a/f;
    .locals 1

    .line 23
    new-instance v0, Lcom/xiaopeng/xui/app/a/f$a;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/app/a/f$a;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)V

    return-object v0
.end method


# virtual methods
.method abstract qC()V
.end method

.method abstract qD()V
.end method

.method abstract qE()V
.end method

.method abstract qF()V
.end method

.method abstract qG()Lcom/xiaopeng/xui/app/a/e$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
