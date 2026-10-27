.class public final synthetic Lcom/android/car/-$$Lambda$VmsPublisherService$z2FWUgD6TdtIdUiU5rVp0q5ZFqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;


# instance fields
.field private final synthetic f$0:Lcom/android/car/VmsPublisherService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/VmsPublisherService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$VmsPublisherService$z2FWUgD6TdtIdUiU5rVp0q5ZFqE;->f$0:Lcom/android/car/VmsPublisherService;

    return-void
.end method


# virtual methods
.method public final onChange(Landroid/car/vms/VmsSubscriptionState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$VmsPublisherService$z2FWUgD6TdtIdUiU5rVp0q5ZFqE;->f$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v0, p1}, Lcom/android/car/VmsPublisherService;->lambda$new$0(Lcom/android/car/VmsPublisherService;Landroid/car/vms/VmsSubscriptionState;)V

    return-void
.end method
