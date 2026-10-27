.class public final synthetic Lcom/android/car/-$$Lambda$CarPropertyService$mh8J-ZI_PfrROVNXRKxJo0U-dKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarPropertyService$mh8J-ZI_PfrROVNXRKxJo0U-dKU;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarPropertyService$mh8J-ZI_PfrROVNXRKxJo0U-dKU;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/car/CarPropertyService$Client;

    invoke-static {v0, p1}, Lcom/android/car/CarPropertyService;->lambda$dump$6(Ljava/io/PrintWriter;Lcom/android/car/CarPropertyService$Client;)V

    return-void
.end method
