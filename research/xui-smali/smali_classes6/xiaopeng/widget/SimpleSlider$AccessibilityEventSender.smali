.class Lxiaopeng/widget/SimpleSlider$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "SimpleSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxiaopeng/widget/SimpleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lxiaopeng/widget/SimpleSlider;


# direct methods
.method private constructor <init>(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0

    .line 1489
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider$AccessibilityEventSender;->this$0:Lxiaopeng/widget/SimpleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lxiaopeng/widget/SimpleSlider;Lxiaopeng/widget/SimpleSlider$1;)V
    .locals 0
    .param p1, "x0"    # Lxiaopeng/widget/SimpleSlider;
    .param p2, "x1"    # Lxiaopeng/widget/SimpleSlider$1;

    .line 1489
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$AccessibilityEventSender;-><init>(Lxiaopeng/widget/SimpleSlider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1491
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$AccessibilityEventSender;->this$0:Lxiaopeng/widget/SimpleSlider;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lxiaopeng/widget/SimpleSlider;->sendAccessibilityEvent(I)V

    .line 1492
    return-void
.end method
