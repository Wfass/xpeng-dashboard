.class final Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$1;
.super Lorg/chromium/net/w$c;
.source "CronetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource;->getStatus(Lorg/chromium/net/w;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$conditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field final synthetic val$statusHolder:[I


# direct methods
.method constructor <init>([ILcom/google/android/exoplayer2/util/ConditionVariable;)V
    .locals 0

    .line 933
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$1;->val$statusHolder:[I

    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$1;->val$conditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {p0}, Lorg/chromium/net/w$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(I)V
    .locals 2

    .line 936
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$1;->val$statusHolder:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 937
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetDataSource$1;->val$conditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    return-void
.end method
