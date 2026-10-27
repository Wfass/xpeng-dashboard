.class public final synthetic Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$TotOehcMyM7yuAbECOWjlcf4gEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$TotOehcMyM7yuAbECOWjlcf4gEo;->f$0:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;

    return-void
.end method


# virtual methods
.method public final onThemeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$TotOehcMyM7yuAbECOWjlcf4gEo;->f$0:Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->updateThemeResource()V

    return-void
.end method
