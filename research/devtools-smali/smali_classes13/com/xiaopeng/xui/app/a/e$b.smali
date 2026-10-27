.class Lcom/xiaopeng/xui/app/a/e$b;
.super Lcom/xiaopeng/xui/app/a/e$c;
.source "XActivityDismissCause.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/a/e$c;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/a/e$d;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 92
    const-string v0, "XActivityDismissCause"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/f;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/a/e$b;->dismiss(I)V

    .line 94
    return-void
.end method
