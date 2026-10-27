.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Zp87jV1jEpUJ2KSEm6ODpDNJtTU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/SituationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Zp87jV1jEpUJ2KSEm6ODpDNJtTU;->f$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SituationManager$Zp87jV1jEpUJ2KSEm6ODpDNJtTU;->f$0:Lcom/xiaopeng/unity/carcontrol/SituationManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->lambda$observeData$14$SituationManager(Ljava/lang/Integer;)V

    return-void
.end method
