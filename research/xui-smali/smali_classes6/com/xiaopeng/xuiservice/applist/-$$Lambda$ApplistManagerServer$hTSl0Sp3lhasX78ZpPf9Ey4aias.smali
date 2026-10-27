.class public final synthetic Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$hTSl0Sp3lhasX78ZpPf9Ey4aias;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

.field private final synthetic f$1:I

.field private final synthetic f$2:[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

.field private final synthetic f$3:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$hTSl0Sp3lhasX78ZpPf9Ey4aias;->f$0:Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    iput p2, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$hTSl0Sp3lhasX78ZpPf9Ey4aias;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$hTSl0Sp3lhasX78ZpPf9Ey4aias;->f$2:[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$hTSl0Sp3lhasX78ZpPf9Ey4aias;->f$3:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$hTSl0Sp3lhasX78ZpPf9Ey4aias;->f$0:Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    iget v1, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$hTSl0Sp3lhasX78ZpPf9Ey4aias;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$hTSl0Sp3lhasX78ZpPf9Ey4aias;->f$2:[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$hTSl0Sp3lhasX78ZpPf9Ey4aias;->f$3:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->lambda$onAppEvent$0(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    return-void
.end method
