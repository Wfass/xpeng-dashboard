.class Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V
    .locals 0

    .line 1931
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    .line 1931
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0

    .line 1935
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1940
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->access$600(Lcom/xiaopeng/xui/widget/XNumberPicker;Z)V

    .line 1941
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->access$700(Lcom/xiaopeng/xui/widget/XNumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
