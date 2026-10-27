.class Lcom/xiaopeng/xui/widget/XNumberPicker$a;
.super Ljava/lang/Object;
.source "XNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/XNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic aep:Lcom/xiaopeng/xui/widget/XNumberPicker;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V
    .locals 0

    .line 1910
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$a;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1914
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$a;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->performLongClick()Z

    .line 1915
    return-void
.end method
