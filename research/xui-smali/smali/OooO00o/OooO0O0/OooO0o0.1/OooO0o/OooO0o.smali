.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0Oo/OooO00o;


# instance fields
.field public final synthetic OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;)V
    .locals 0

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 13

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;

    .line 2
    iget-boolean v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0Oo:Z

    if-nez v1, :cond_6

    .line 3
    const/4 v1, 0x1

    iput-boolean v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0Oo:Z

    .line 4
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "MyAudioRecord"

    const-string v3, "start Global AudioRecord"

    invoke-virtual {v0, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    sget-object v2, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0O0:[Ljava/lang/Integer;

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0xc

    const/4 v6, 0x2

    .line 123
    invoke-static {v8, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    const/4 v6, -0x2

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance v12, Landroid/media/AudioRecord;

    const/4 v7, 0x1

    const/16 v9, 0xc

    const/4 v10, 0x2

    move-object v6, v12

    move v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 134
    invoke-virtual {v12}, Landroid/media/AudioRecord;->getState()I

    move-result v6

    if-ne v6, v1, :cond_1

    .line 135
    new-array v1, v5, [B

    iput-object v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0o:[B

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v12}, Landroid/media/AudioRecord;->release()V

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    .line 140
    :goto_1
    iput-object v12, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0oO:Landroid/media/AudioRecord;

    .line 141
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;

    .line 142
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0oO:Landroid/media/AudioRecord;

    if-eqz v0, :cond_5

    if-nez v0, :cond_3

    goto :goto_2

    .line 143
    :cond_3
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 144
    :goto_2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0OO;

    iget-object v3, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;

    invoke-direct {v2, v3}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO$OooO0OO;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 145
    iput-object v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0o0:Ljava/lang/Thread;

    .line 146
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;

    .line 147
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0OO;->OooO0o0:Ljava/lang/Thread;

    if-nez v0, :cond_4

    goto :goto_3

    .line 148
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 149
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot instantiate VoiceRecorder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    return-void
.end method

.method public OooO00o([Ljava/lang/String;)V
    .locals 2
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 150
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "MyAudioRecord"

    const-string v1, "onPermissionReject"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
