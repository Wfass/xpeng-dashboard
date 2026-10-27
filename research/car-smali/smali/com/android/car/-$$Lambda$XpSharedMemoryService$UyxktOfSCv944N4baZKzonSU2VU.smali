.class public final synthetic Lcom/android/car/-$$Lambda$XpSharedMemoryService$UyxktOfSCv944N4baZKzonSU2VU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/car/XpSharedMemoryService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/XpSharedMemoryService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$XpSharedMemoryService$UyxktOfSCv944N4baZKzonSU2VU;->f$0:Lcom/android/car/XpSharedMemoryService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$XpSharedMemoryService$UyxktOfSCv944N4baZKzonSU2VU;->f$0:Lcom/android/car/XpSharedMemoryService;

    check-cast p1, Lcom/android/car/XpSharedMemoryService$Client;

    invoke-static {v0, p1}, Lcom/android/car/XpSharedMemoryService;->lambda$dump$4(Lcom/android/car/XpSharedMemoryService;Lcom/android/car/XpSharedMemoryService$Client;)Z

    move-result p1

    return p1
.end method
