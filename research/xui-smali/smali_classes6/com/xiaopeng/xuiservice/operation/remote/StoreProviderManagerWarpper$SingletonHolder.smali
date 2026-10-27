.class public Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SingletonHolder;
.super Ljava/lang/Object;
.source "StoreProviderManagerWarpper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field public static instance:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;-><init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SingletonHolder;->instance:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
