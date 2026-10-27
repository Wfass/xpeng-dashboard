.class public final synthetic Lcom/android/car/-$$Lambda$CarPropertyService$GmOHpoxzxfkZSU3JChNXJYE9pLk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarPropertyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarPropertyService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarPropertyService$GmOHpoxzxfkZSU3JChNXJYE9pLk;->f$0:Lcom/android/car/CarPropertyService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarPropertyService$GmOHpoxzxfkZSU3JChNXJYE9pLk;->f$0:Lcom/android/car/CarPropertyService;

    check-cast p1, Lcom/android/car/CarPropertyService$Client;

    invoke-static {v0, p1}, Lcom/android/car/CarPropertyService;->lambda$dump$5(Lcom/android/car/CarPropertyService;Lcom/android/car/CarPropertyService$Client;)Z

    move-result p1

    return p1
.end method
