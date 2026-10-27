.class public final synthetic Lcom/xiaopeng/xui/widget/-$$Lambda$65XJjg0uFgxEO0A5UZku-7-83FI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/widget/XSimpleSlider;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/widget/XSimpleSlider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$65XJjg0uFgxEO0A5UZku-7-83FI;->f$0:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    return-void
.end method


# virtual methods
.method public final onThemeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$65XJjg0uFgxEO0A5UZku-7-83FI;->f$0:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->vf()V

    return-void
.end method
