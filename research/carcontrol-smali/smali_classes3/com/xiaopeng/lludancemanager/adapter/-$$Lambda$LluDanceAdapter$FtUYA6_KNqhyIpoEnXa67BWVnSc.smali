.class public final synthetic Lcom/xiaopeng/lludancemanager/adapter/-$$Lambda$LluDanceAdapter$FtUYA6_KNqhyIpoEnXa67BWVnSc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;

.field public final synthetic f$1:Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;ILcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/-$$Lambda$LluDanceAdapter$FtUYA6_KNqhyIpoEnXa67BWVnSc;->f$0:Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/adapter/-$$Lambda$LluDanceAdapter$FtUYA6_KNqhyIpoEnXa67BWVnSc;->f$1:Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;

    iput p3, p0, Lcom/xiaopeng/lludancemanager/adapter/-$$Lambda$LluDanceAdapter$FtUYA6_KNqhyIpoEnXa67BWVnSc;->f$2:I

    iput-object p4, p0, Lcom/xiaopeng/lludancemanager/adapter/-$$Lambda$LluDanceAdapter$FtUYA6_KNqhyIpoEnXa67BWVnSc;->f$3:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/-$$Lambda$LluDanceAdapter$FtUYA6_KNqhyIpoEnXa67BWVnSc;->f$0:Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/adapter/-$$Lambda$LluDanceAdapter$FtUYA6_KNqhyIpoEnXa67BWVnSc;->f$1:Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;

    iget v2, p0, Lcom/xiaopeng/lludancemanager/adapter/-$$Lambda$LluDanceAdapter$FtUYA6_KNqhyIpoEnXa67BWVnSc;->f$2:I

    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/adapter/-$$Lambda$LluDanceAdapter$FtUYA6_KNqhyIpoEnXa67BWVnSc;->f$3:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->lambda$onBindViewHolder$0$LluDanceAdapter(Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;ILcom/xiaopeng/lludancemanager/bean/LluDanceViewData;Landroid/view/View;)V

    return-void
.end method
