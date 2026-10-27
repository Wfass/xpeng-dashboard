.class final Lcom/alipay/arome/aromecli/AromeServiceInvoker$2;
.super Ljava/lang/Object;
.source "AromeServiceInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/arome/aromecli/AromeServiceInvoker;->registerCustomClickListener([Ljava/lang/String;Lcom/alipay/arome/aromecli/AromeServiceInvoker$OnCustomClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/alipay/arome/aromecli/AromeServiceInvoker$2;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 89
    :try_start_0
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->getRemoteService()Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/arome/aromecli/AromeServiceInvoker$2;->a:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;->registerOnCustomClickListener([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "register custom click event error"

    invoke-static {v1, v0}, Lcom/alipay/arome/aromecli/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
