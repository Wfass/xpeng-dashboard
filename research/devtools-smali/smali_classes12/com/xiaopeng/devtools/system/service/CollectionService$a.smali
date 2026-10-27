.class public Lcom/xiaopeng/devtools/system/service/CollectionService$a;
.super Landroid/os/Binder;
.source "CollectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/system/service/CollectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic AY:Lcom/xiaopeng/devtools/system/service/CollectionService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/system/service/CollectionService;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CollectionService$a;->AY:Lcom/xiaopeng/devtools/system/service/CollectionService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public kP()Lcom/xiaopeng/devtools/system/service/CollectionService;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CollectionService$a;->AY:Lcom/xiaopeng/devtools/system/service/CollectionService;

    return-object v0
.end method
