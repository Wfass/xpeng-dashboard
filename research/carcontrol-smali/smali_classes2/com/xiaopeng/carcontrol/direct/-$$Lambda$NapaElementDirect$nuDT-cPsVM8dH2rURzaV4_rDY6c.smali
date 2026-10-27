.class public final synthetic Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$nuDT-cPsVM8dH2rURzaV4_rDY6c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$nuDT-cPsVM8dH2rURzaV4_rDY6c;->f$0:Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$nuDT-cPsVM8dH2rURzaV4_rDY6c;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iput p3, p0, Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$nuDT-cPsVM8dH2rURzaV4_rDY6c;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$nuDT-cPsVM8dH2rURzaV4_rDY6c;->f$0:Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$nuDT-cPsVM8dH2rURzaV4_rDY6c;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p0, Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$nuDT-cPsVM8dH2rURzaV4_rDY6c;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->lambda$showElementItemViewForList$0$NapaElementDirect(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
