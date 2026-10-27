.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$Qs5-6TcEiXGapJaP21kgbA4zR6A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$Qs5-6TcEiXGapJaP21kgbA4zR6A;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    return-void
.end method


# virtual methods
.method public final onItemClick(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$Qs5-6TcEiXGapJaP21kgbA4zR6A;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->onThemeChanged(IILjava/lang/String;)V

    return-void
.end method
