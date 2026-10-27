.class Lcjb$a;
.super Ljava/lang/Object;
.source "SimpleSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcjb;


# direct methods
.method private constructor <init>(Lcjb;)V
    .locals 0

    .line 1489
    iput-object p1, p0, Lcjb$a;->a:Lcjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcjb;Lcjb$1;)V
    .locals 0

    .line 1489
    invoke-direct {p0, p1}, Lcjb$a;-><init>(Lcjb;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1491
    iget-object v0, p0, Lcjb$a;->a:Lcjb;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcjb;->sendAccessibilityEvent(I)V

    return-void
.end method
