.class public abstract Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListenerAdapter;
.super Ljava/lang/Object;
.source "XTabLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/XTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnTabChangeListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTabChange(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)Z
    .locals 1
    .param p1, "tabLayout"    # Lcom/xiaopeng/xui/widget/XTabLayout;
    .param p2, "index"    # I
    .param p3, "tabChange"    # Z
    .param p4, "fromUser"    # Z

    .line 897
    const/4 v0, 0x0

    return v0
.end method

.method public onTabChangeStart(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V
    .locals 0
    .param p1, "tabLayout"    # Lcom/xiaopeng/xui/widget/XTabLayout;
    .param p2, "index"    # I
    .param p3, "tabChange"    # Z
    .param p4, "fromUser"    # Z

    .line 903
    return-void
.end method
