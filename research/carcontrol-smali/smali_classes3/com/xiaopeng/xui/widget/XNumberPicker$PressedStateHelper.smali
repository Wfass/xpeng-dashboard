.class Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;
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
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V
    .locals 0

    .line 1879
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1883
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->MODE_PRESS:I

    const/4 p1, 0x2

    .line 1884
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 2

    .line 1896
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    .line 1897
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->mMode:I

    .line 1898
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1899
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    .line 1903
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    .line 1904
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->mMode:I

    .line 1905
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1906
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 1890
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->mMode:I

    .line 1891
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1892
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 5

    .line 1911
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1913
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->mManagedButton:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1919
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->access$500(Lcom/xiaopeng/xui/widget/XNumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1915
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->access$400(Lcom/xiaopeng/xui/widget/XNumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$PressedStateHelper;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate(IIII)V

    :goto_0
    return-void
.end method
