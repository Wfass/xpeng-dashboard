.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$2Zjb2MSXekgYM-_xoDwjZhZOSps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$2Zjb2MSXekgYM-_xoDwjZhZOSps;->f$0:Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$2Zjb2MSXekgYM-_xoDwjZhZOSps;->f$0:Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;

    check-cast p1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->lambda$handleApplistChanged$6(Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    return-void
.end method
