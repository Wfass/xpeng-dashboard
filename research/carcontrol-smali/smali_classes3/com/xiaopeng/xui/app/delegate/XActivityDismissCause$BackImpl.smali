.class Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackImpl;
.super Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;
.source "XActivityDismissCause.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackImpl"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string v0, "XActivityDismissCause"

    const-string v1, "onBackPressed"

    .line 93
    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackImpl;->dismiss(I)V

    return-void
.end method
