.class public final synthetic Lcom/android/car/-$$Lambda$CarPropertyService$aFp4XnW8r34vHlQCvNkqXNSwpVA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarPropertyService$aFp4XnW8r34vHlQCvNkqXNSwpVA;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarPropertyService$aFp4XnW8r34vHlQCvNkqXNSwpVA;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/util/ArraySet;

    invoke-static {v0, p1, p2}, Lcom/android/car/CarPropertyService;->lambda$idsToString$0(Ljava/lang/StringBuilder;Ljava/lang/Integer;Landroid/util/ArraySet;)V

    return-void
.end method
