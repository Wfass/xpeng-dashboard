.class Lcom/xiaopeng/xui/widget/XNumberPicker$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

.field private aeq:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V
    .locals 0

    .line 1878
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$b;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/XNumberPicker$b;Z)V
    .locals 0

    .line 1878
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$b;->bi(Z)V

    return-void
.end method

.method private bi(Z)V
    .locals 0

    .line 1882
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$b;->aeq:Z

    .line 1883
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1887
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$b;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$b;->aeq:Z

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->a(Lcom/xiaopeng/xui/widget/XNumberPicker;Z)V

    .line 1888
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$b;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$b;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->c(Lcom/xiaopeng/xui/widget/XNumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1889
    return-void
.end method
