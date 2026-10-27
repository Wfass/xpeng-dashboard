.class public Lcom/xiaopeng/xui/view/c/a;
.super Landroid/view/TouchDelegate;
.source "XTouchDelegate.java"


# instance fields
.field private abx:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 24
    iput-object p2, p0, Lcom/xiaopeng/xui/view/c/a;->abx:Landroid/view/View;

    .line 25
    return-void
.end method


# virtual methods
.method public qO()Landroid/view/View;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xui/view/c/a;->abx:Landroid/view/View;

    return-object v0
.end method
