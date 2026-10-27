.class abstract Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;
.super Ljava/lang/Object;
.source "XActivityDismissExtend.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityDismiss;
.implements Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;,
        Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/app/Activity;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 23
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method abstract setOnDismissListenerEx(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;)V
.end method
