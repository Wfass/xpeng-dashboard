.class Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout$1;
.super Lawq;
.source "RadioHistoryLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;->createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;ZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 6

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout$1;->k:Lcom/xiaopeng/musicradio/mine/radio/RadioHistoryLayout;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lawq;-><init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;ZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method
