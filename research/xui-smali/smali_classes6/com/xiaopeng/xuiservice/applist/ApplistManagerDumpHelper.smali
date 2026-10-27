.class public Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;
.super Ljava/lang/Object;
.source "ApplistManagerDumpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$TwoParamsCommandExecutor;,
        Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$OneParamCommandExecutor;,
        Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$NoParamCommandExecutor;,
        Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$ICommandExecutor;
    }
.end annotation


# instance fields
.field private mHelpOpt:Lorg/apache/commons/cli/Option;

.field private mOptionCommandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/cli/Option;",
            "Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$ICommandExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private mOptions:Lorg/apache/commons/cli/Options;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/apache/commons/cli/Options;

    invoke-direct {v0}, Lorg/apache/commons/cli/Options;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptions:Lorg/apache/commons/cli/Options;

    .line 27
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "h"

    const-string v2, "help"

    const-string v3, "Print help"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mHelpOpt:Lorg/apache/commons/cli/Option;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptions:Lorg/apache/commons/cli/Options;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mHelpOpt:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptionCommandMap:Ljava/util/Map;

    .line 30
    return-void
.end method


# virtual methods
.method public parse([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 25
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    move-object/from16 v1, p0

    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, "cli":Lorg/apache/commons/cli/CommandLine;
    new-instance v0, Lorg/apache/commons/cli/GnuParser;

    invoke-direct {v0}, Lorg/apache/commons/cli/GnuParser;-><init>()V

    move-object v3, v0

    .line 73
    .local v3, "cliParser":Lorg/apache/commons/cli/CommandLineParser;
    new-instance v4, Lorg/apache/commons/cli/HelpFormatter;

    invoke-direct {v4}, Lorg/apache/commons/cli/HelpFormatter;-><init>()V

    .line 75
    .local v4, "helpFormatter":Lorg/apache/commons/cli/HelpFormatter;
    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptions:Lorg/apache/commons/cli/Options;
    :try_end_0
    .catch Lorg/apache/commons/cli/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v14, p1

    :try_start_1
    invoke-interface {v3, v0, v14}, Lorg/apache/commons/cli/CommandLineParser;->parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/commons/cli/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .end local v2    # "cli":Lorg/apache/commons/cli/CommandLine;
    .local v0, "cli":Lorg/apache/commons/cli/CommandLine;
    nop

    .line 83
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mHelpOpt:Lorg/apache/commons/cli/Option;

    invoke-virtual {v2}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const/16 v6, 0x4a

    const-string v7, "dumpsys xuiservice -m ApplistManager"

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptions:Lorg/apache/commons/cli/Options;

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v13}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;IILjava/lang/String;Z)V

    .line 88
    :cond_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptionCommandMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 89
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/cli/Option;Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$ICommandExecutor;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/cli/Option;

    .line 90
    .local v6, "opt":Lorg/apache/commons/cli/Option;
    invoke-virtual {v6}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 91
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$ICommandExecutor;

    .line 92
    .local v7, "executor":Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$ICommandExecutor;
    invoke-virtual {v6}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/commons/cli/CommandLine;->getOptionValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "values":[Ljava/lang/String;
    instance-of v9, v7, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$NoParamCommandExecutor;

    if-eqz v9, :cond_1

    .line 94
    move-object v9, v7

    check-cast v9, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$NoParamCommandExecutor;

    invoke-interface {v9}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$NoParamCommandExecutor;->exec()V

    goto :goto_1

    .line 95
    :cond_1
    instance-of v9, v7, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$OneParamCommandExecutor;

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    if-eqz v8, :cond_2

    array-length v9, v8

    invoke-virtual {v6}, Lorg/apache/commons/cli/Option;->getArgs()I

    move-result v11

    if-ne v9, v11, :cond_2

    .line 96
    move-object v9, v7

    check-cast v9, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$OneParamCommandExecutor;

    aget-object v10, v8, v10

    invoke-interface {v9, v10}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$OneParamCommandExecutor;->exec(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_2
    instance-of v9, v7, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$TwoParamsCommandExecutor;

    if-eqz v9, :cond_3

    if-eqz v8, :cond_3

    array-length v9, v8

    invoke-virtual {v6}, Lorg/apache/commons/cli/Option;->getArgs()I

    move-result v11

    if-ne v9, v11, :cond_3

    .line 98
    move-object v9, v7

    check-cast v9, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$TwoParamsCommandExecutor;

    aget-object v10, v8, v10

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-interface {v9, v10, v11}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$TwoParamsCommandExecutor;->exec(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_3
    const/16 v17, 0x4a

    const-string v18, "Invalid command\ndumpsys xuiservice -m ApplistManager"

    const/16 v19, 0x0

    iget-object v9, v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptions:Lorg/apache/commons/cli/Options;

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object v15, v4

    move-object/from16 v16, p2

    move-object/from16 v20, v9

    invoke-virtual/range {v15 .. v24}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;IILjava/lang/String;Z)V

    .line 106
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/cli/Option;Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$ICommandExecutor;>;"
    .end local v6    # "opt":Lorg/apache/commons/cli/Option;
    .end local v7    # "executor":Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$ICommandExecutor;
    .end local v8    # "values":[Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_0

    .line 107
    :cond_5
    return-void

    .line 76
    .end local v0    # "cli":Lorg/apache/commons/cli/CommandLine;
    .restart local v2    # "cli":Lorg/apache/commons/cli/CommandLine;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v14, p1

    .line 77
    .local v0, "e":Lorg/apache/commons/cli/ParseException;
    :goto_2
    const/16 v17, 0x4a

    const-string v18, "dumpsys xuiservice -m ApplistManager"

    const/16 v19, 0x0

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptions:Lorg/apache/commons/cli/Options;

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object v15, v4

    move-object/from16 v16, p2

    move-object/from16 v20, v5

    invoke-virtual/range {v15 .. v24}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;IILjava/lang/String;Z)V

    .line 80
    invoke-virtual {v0}, Lorg/apache/commons/cli/ParseException;->printStackTrace()V

    .line 81
    return-void
.end method

.method public registerIdmapCommand(Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$NoParamCommandExecutor;)V
    .locals 5
    .param p1, "executor"    # Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$NoParamCommandExecutor;

    .line 33
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "im"

    const-string v2, "idmap"

    const-string v3, "dump app id map"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 34
    .local v0, "idmapOpt":Lorg/apache/commons/cli/Option;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptions:Lorg/apache/commons/cli/Options;

    invoke-virtual {v1, v0}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 35
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptionCommandMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public registerInstallCommand(Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$TwoParamsCommandExecutor;)V
    .locals 5
    .param p1, "executor"    # Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$TwoParamsCommandExecutor;

    .line 39
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "i"

    const-string v2, "install"

    const-string v3, "install app"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 40
    .local v0, "installOpt":Lorg/apache/commons/cli/Option;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Option;->setArgs(I)V

    .line 41
    const-string v1, "category> <pkg"

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Option;->setArgName(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptions:Lorg/apache/commons/cli/Options;

    invoke-virtual {v1, v0}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptionCommandMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public registerListCategoryAppsCommand(Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$OneParamCommandExecutor;)V
    .locals 5
    .param p1, "executor"    # Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$OneParamCommandExecutor;

    .line 61
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "la"

    const-string v2, "list_all"

    const-string v3, "list all apps in category"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 62
    .local v0, "listOpt":Lorg/apache/commons/cli/Option;
    invoke-virtual {v0, v4}, Lorg/apache/commons/cli/Option;->setArgs(I)V

    .line 63
    const-string v1, "category"

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Option;->setArgName(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptions:Lorg/apache/commons/cli/Options;

    invoke-virtual {v1, v0}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 65
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptionCommandMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public registerListCategoryCommand(Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$NoParamCommandExecutor;)V
    .locals 5
    .param p1, "executor"    # Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$NoParamCommandExecutor;

    .line 55
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "l"

    const-string v2, "list_category"

    const-string v3, "list all supported app category"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 56
    .local v0, "listCategoryOpt":Lorg/apache/commons/cli/Option;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptions:Lorg/apache/commons/cli/Options;

    invoke-virtual {v1, v0}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptionCommandMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public registerUninstallCommand(Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$TwoParamsCommandExecutor;)V
    .locals 5
    .param p1, "executor"    # Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$TwoParamsCommandExecutor;

    .line 47
    new-instance v0, Lorg/apache/commons/cli/Option;

    const-string v1, "u"

    const-string v2, "uninstall"

    const-string v3, "uninstall app"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 48
    .local v0, "uninstallOpt":Lorg/apache/commons/cli/Option;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Option;->setArgs(I)V

    .line 49
    const-string v1, "category> <pkg"

    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Option;->setArgName(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptions:Lorg/apache/commons/cli/Options;

    invoke-virtual {v1, v0}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 51
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper;->mOptionCommandMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
